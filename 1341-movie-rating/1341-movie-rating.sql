# Write your MySQL query statement below

with A as (select mo.title, us.name, rating, created_at
            from MovieRating as mr
                left join Movies as mo
                on mr.movie_id = mo.movie_id

                left join Users as us
                on mr.user_id = us.user_id),
    
    B as (select name,count(*) as cu
            from A
            group by name
            order by cu desc, name asc
            limit 1),
            
    D as (select title, avg(rating) as ma
            from A
            where month(created_at) = 2 and year(created_at) = 2020
            group by title
            order by ma desc, title
            limit 1)
            
(select name as results from B) 
union all
(select title from D)
