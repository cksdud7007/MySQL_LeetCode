# Write your MySQL query statement below
select product_name, sum(unit) as unit
    from Products as P
left join Orders as O on P.product_id = O.product_id
where date_format(order_date,'%Y-%m') = '2020-02'
group by P.product_id
having sum(unit) >= 100