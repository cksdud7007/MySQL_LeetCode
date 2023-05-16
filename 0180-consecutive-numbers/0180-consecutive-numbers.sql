/* Write your T-SQL query statement below */

select distinct num as ConsecutiveNums
from (select num, lag(num, 1) over(order by id) as 'LAG', lag(num, 2) over(order by id) as 'LAG_'
from Logs) as a
where num = LAG and LAG = LAG_
