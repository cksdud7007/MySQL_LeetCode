/* Write your T-SQL query statement below */

-- select Department, Employee, salary as Salary
-- from (select D.name as Department, E.name as Employee, E.salary, 
--       rank() over(partition by E.departmentId order by E.salary desc) as SS
--         from Employee as E left join Department as D on E.departmentId = D.id) as B
select Department, Employee, salary as Salary
from (select D.name as Department, E.name as Employee, E.salary, 
      dense_rank() over(partition by E.departmentId order by E.salary desc) as SS
        from Employee as E left join Department as D on E.departmentId = D.id) as A
where SS <= 3
    