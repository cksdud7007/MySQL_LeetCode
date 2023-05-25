# Write your MySQL query statement below
with A as ((select requester_id, accepter_id
             from RequestAccepted)
           union
          (select accepter_id, requester_id
             from RequestAccepted))
    
select requester_id as id, count(*) as num
    from A
group by requester_id
order by num desc
limit 1