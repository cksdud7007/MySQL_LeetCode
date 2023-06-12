# Write your MySQL query statement below
select max(num) as num
    from MyNumbers
where num in (select * 
                from MyNumbers 
              group by num
              having count(*) = 1)