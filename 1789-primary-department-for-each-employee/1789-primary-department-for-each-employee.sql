# Write your MySQL query statement below
with tb as (select employee_id, department_id
                from Employee
            where primary_flag = 'Y')

(select employee_id, department_id
    from Employee
where employee_id not in (select employee_id from tb))
union
(select employee_id, department_id
    from tb)
order by employee_id asc