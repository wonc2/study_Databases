select c.customername, o.num from customers c,
(select customerid, count(*) as num from orders group by customerid)
o where c.customerid = o.customerid