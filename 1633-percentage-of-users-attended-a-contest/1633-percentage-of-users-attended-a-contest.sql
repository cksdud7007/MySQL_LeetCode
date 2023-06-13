# Write your MySQL query statement below
select contest_id, round(count(*)/(select count(*) as co from Users) * 100,2) as percentage
    from Register
group by contest_id
order by 2 desc, 1 