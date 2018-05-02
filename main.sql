Write a query fetch those customers who has not order yet using left join?
___________________________________________________________________________________________________________________________________
select Customers.customerid, customername
from Customers left join orders
on Customers.customerid = orders.customerid
where orders.customerid is null

----------------------------------------------------------------------------------------------------------------------------------

Write a query to total order of customers?
___________________________________________________________________________________________________________________________________
select Customers.customerid, customername, count(orderid)
from Customers left join orders
on Customers.customerid = orders.customerid
group by customername

----------------------------------------------------------------------------------------------------------------------------------
