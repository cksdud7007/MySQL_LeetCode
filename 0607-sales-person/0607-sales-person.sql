# Write your MySQL query statement below
select name
    from SalesPerson
where sales_id not in (select O.sales_id
                            from Orders as O
                        join Company as C on O.com_id = C.com_id
                        where C.name = 'RED')