select U.user_id as buyer_id, U.join_date, case when bu_cu is null then 0 else bu_cu end as orders_in_2019
    from Users as U
left join 
    (select buyer_id, count(*) as bu_cu
        from Orders
    where year(order_date) = '2019' 
    group by buyer_id) as Or_c
on U.user_id = Or_c.buyer_id