# Write your MySQL query statement below
# select C.visited_on, sum(C.amount) as amount, avg(C.amount) as average_amount
#     from Customer as C
# left join Customer as Cu
# on datediff(Cu.visited_on,C.visited_on) <= 7
# group by C.visited_on
# having count(C.visited_on) = 7

select date_add(C.visited_on,interval 6 day) as visited_on, sum(Cu.amount) as amount, round(sum(Cu.amount)/7,2) as average_amount
    from (SELECT DISTINCT visited_on FROM Customer) AS C
left join Customer AS Cu ON Cu.visited_on >= C.visited_on and datediff(Cu.visited_on, C.visited_on) < 7
group by C.visited_on
having count(distinct Cu.visited_on) = 7
order by C.visited_on