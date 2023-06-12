# Write your MySQL query statement below
select E.name, B.bonus
    from Employee as E
left join Bonus as B on E.empId = B.empId
where IFNULL(bonus, 0) < 1000