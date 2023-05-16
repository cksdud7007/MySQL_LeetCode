# Write your MySQL query statement below
with join_table as (select D.name as dept, E.name, E.salary, D.id
from Employee as E
right join Department as D on E.departmentId = D.id)

select dept as Department, name as Employee, salary as Salary
from join_table
where (id,salary) in (select departmentId, max(salary) from Employee 
group by departmentId)
