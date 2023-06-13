# Write your MySQL query statement below

with E as (select employee_id
             from Employees
           where employee_id not in (select employee_id from Salaries)),
     S as (select employee_id
             from Salaries
           where employee_id not in (select employee_id from Employees))

(select *
    from E)
union
(select *
    from S)
order by employee_id asc