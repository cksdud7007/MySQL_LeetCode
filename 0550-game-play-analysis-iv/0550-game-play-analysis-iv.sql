# Write your MySQL query statement below
select round(sum(Cons)/count(distinct player_id),2) as fraction
from (select A.player_id, case when event_date - min_event_date = 1 then 1
                        else 0 end as Cons
from Activity as A  inner join (select player_id, min(event_date) as min_event_date from Activity group by player_id) as B
                    on A.player_id = B.player_id) as D