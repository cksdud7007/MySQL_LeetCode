# Write your MySQL query statement below
with buy as (select stock_name, sum(-price) as price
                from Stocks
             where operation = 'Buy'
             group by stock_name),
     sell as (select stock_name, sum(price) as price
                from Stocks
             where operation = 'Sell'
             group by stock_name)
             
select buy.stock_name, buy.price + sell.price as capital_gain_loss
    from buy
join sell
on buy.stock_name = sell.stock_name