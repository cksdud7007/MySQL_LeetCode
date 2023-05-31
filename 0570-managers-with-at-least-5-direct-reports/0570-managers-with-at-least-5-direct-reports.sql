# Write your MySQL query statement below
select E.name
    from Employee as E
left join Employee as Em on E.id = Em.managerId
group by E.id
having count(*) >=5