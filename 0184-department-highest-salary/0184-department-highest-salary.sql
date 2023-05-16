/* Write your T-SQL query statement below */

select Department, Employee, Salary
    from (select D.name as Department, E.name as Employee, E.salary AS Salary, max(E.salary) over(partition by D.name) as MaxSalary
        from Employee as E
        left join Department as D 
        on E.departmentId = D.id) as A
where Salary = MaxSalary