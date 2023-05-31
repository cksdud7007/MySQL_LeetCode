# Write your MySQL query statement below
select  distinct T.id,
        case when T.p_id is null then 'Root'
             when Tr.id is null then 'Leaf'
             else 'Inner' end as type
    from Tree as T
left join Tree as Tr on T.id = Tr.p_id