# Write your MySQL query statement below
select S.user_id, round(sum(case when C.action = 'confirmed' then 1 else 0 end)/ count(*),2) as confirmation_rate
    from Signups as S
left join Confirmations as C
on S.user_id = C.user_id
group by S.user_id