# Write your MySQL query statement below
with id_diff_tb as (select id, visit_date, people, id - row_number() over(order by id) as diff_id  
                        from Stadium
                        where people >= 100)
    
select id, visit_date, people
    from id_diff_tb
where diff_id in (select diff_id from id_diff_tb group by diff_id having count(*) >= 3)
order by id