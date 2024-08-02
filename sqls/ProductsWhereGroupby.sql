SELECT * FROM Products p1,
(select * from (select categoryID, count(*) as num from products group by categoryID) where num >= 10) p2
where p1.categoryID = p2.categoryID