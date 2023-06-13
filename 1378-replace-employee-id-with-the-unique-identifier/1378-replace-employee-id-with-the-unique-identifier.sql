# Write your MySQL query statement below

select Em.unique_id, E.name
    from Employees as E
left join EmployeeUNI as Em
on E.id = Em.id