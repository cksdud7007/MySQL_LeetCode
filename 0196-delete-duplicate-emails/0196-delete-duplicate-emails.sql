# Please write a DELETE statement and DO NOT write a SELECT statement.
# Write your MySQL query statement below
# delete from Person
# where id not in (select sub.id from (select email, min(id) as id 
# from Person 
# group by email) sub)

delete p1 from Person as p1 
      inner join Person as p2 on p1.email = p2.email 
      where p1.id > p2.id