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

Write a query to fetch employee details whose salary is greater than 19000?
___________________________________________________________________________________________________________________________________
select customername, salary
from Customers
where customerid in
(select customerid 
from Customers
where salary>19000)
----------------------------------------------------------------------------------------------------------------------------------

Write a query to find 4th highest salary ?

select customername, salary
from Customers c1
where 4 = 
(select count(salary)
 from Customers c2
 where c2.salary>=c1.salary
)
