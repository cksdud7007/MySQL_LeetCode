# Write your MySQL query statement below
select person_name
    from (select person_name, sum(weight) over(order by turn) as total_Weight
            from Queue) as total
where total_Weight <= 1000
order by total_Weight desc
limit 1