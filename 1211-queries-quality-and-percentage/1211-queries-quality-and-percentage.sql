# Write your MySQL query statement below
select query_name,
       round(sum(rating/position)/count(*),2) as quality,
       round(count(case when rating < 3 then rating end)/count(*) * 100,2) as poor_query_percentage
    from Queries
group by query_name