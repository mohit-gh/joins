Write a query fetch those customers who has not order yet using left join?

select Customers.customerid, customername
from Customers left join orders
on Customers.customerid = orders.customerid
where orders.customerid is null

----------------------------------------------------------------------------------------------------------------------------------
