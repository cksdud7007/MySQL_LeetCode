# Write your MySQL query statement below
select P.product_id, P.product_name
    from Product as P
left join Sales as S on P.product_id = S.product_id
group by P.product_id
having min(sale_date) >= cast('2019-01-01' as date) and
       max(sale_date) <= cast('2019-03-31' as date)