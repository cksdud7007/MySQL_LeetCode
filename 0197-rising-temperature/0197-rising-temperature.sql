# Write your MySQL query statement below
select W.id
    from Weather as W
join (select * from Weather) as We
on W.temperature > We.temperature
where datediff(W.recordDate, We.recordDate) = 1
