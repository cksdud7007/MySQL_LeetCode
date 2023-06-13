# Write your MySQL query statement below
with income_tb as (select account_id, case when income < 20000 then income end as Salary1,
                                      case when income between 20000 and 50000 then income end as Salary2,
                                      case when income > 50000 then income end as Salary3
                        from Accounts)


(select 'Low Salary' as category, count(*) as accounts_count
    from income_tb
where  Salary1 is not null)
union
(select 'Average Salary' as category, count(*) as accounts_count
    from income_tb
where  Salary2 is not null)
union
(select 'High Salary' as category, count(*) as accounts_count
    from income_tb
where  Salary3 is not null)