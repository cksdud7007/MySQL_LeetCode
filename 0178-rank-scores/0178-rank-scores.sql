# Write your MySQL query statement below
select C.score, D.rank
    from Scores as C
left join (select B.score, count(distinct A.score) as 'rank'
              from Scores as A
           join (select distinct score from Scores) as B on B.score <= A.score
           group by B.score
           order by B.score desc) as D on C.score = D.score
order by C.score desc