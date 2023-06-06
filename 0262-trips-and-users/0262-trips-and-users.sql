# Write your MySQL query statement below
select T.request_at as 'Day',
       round(sum(case when T.status like 'cancelled%' then 1 else 0 end)/ count(*),2) as 'Cancellation Rate'
    from Trips as T
left join Users as U on T.client_id = U.users_id
left join Users as Us on T.driver_id = Us.users_id
where U.banned = 'No' and Us.banned = "No" and T.request_at between '2013-10-01' and '2013-10-03'
group by T.request_at