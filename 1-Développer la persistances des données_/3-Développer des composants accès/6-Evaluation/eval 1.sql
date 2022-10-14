-- Active: 1664366408140@@127.0.0.1@3306@northwind
#1
select CompanyName, ContactName, ContactTitle, Phone from customers
WHERE country = 'France';


#2
SELECT productname, unitprice
 from products
 join suppliers on suppliers.supplierid = products.supplierid
 where suppliers.supplierid = 1;

 #3


SELECT companyname, COUNT(productname)
FROM products as p
JOIN suppliers AS s ON s.SupplierID = p.supplierid
WHERE country = 'France'
GROUP BY companyname 
ORDER BY COUNT(productname) desc
;

#4


SELECT companyname , COUNT(orders.OrderID) 
FROM customers 
JOIN orders ON customers.CustomerID = orders.customerid
wHERE Country = 'France' 
GROUP BY companyname
HAVING COUNT(orders.OrderID) > 10
;

#5

SELECT companyname, SUM(unitprice*quantity), shipcountry
FROM `order details` AS od
JOIN orders AS o ON o.OrderID = od.orderid
JOIN customers AS c ON c.CustomerID = o.CustomerID
GROUP BY companyname
HAVING SUM(unitprice*quantity) > 30000
ORDER BY SUM(unitprice*quantity) desc
;

#6

SELECT c.country
FROM customers AS c
JOIN orders AS o ON c.CustomerID = o.CustomerID
JOIN `order details` AS od ON o.OrderID = od.orderid
JOIN products AS pr ON pr.productid = od.productid
JOIN suppliers AS s ON s.SupplierID = pr.supplierid
WHERE s.CompanyName = 'Exotic Liquids'
GROUP BY c.country
;


#7

SELECT SUM(unitprice*quantity) AS 'Montant ventes 97'
FROM `order details` AS od
JOIN orders AS o ON o.OrderID = od.orderid
WHERE year(OrderDate) = 1997
;


#8

SELECT SUM(unitprice*quantity) AS 'Montant ventes 97'
FROM `order details` AS od
JOIN orders AS o ON o.OrderID = od.orderid
WHERE year(OrderDate) = 1997
GROUP BY month(orderdate)
;

#9
select max(orderDate)
from orders as o 
join customers as c on c.CustomerID = o.CustomerID
where c.CompanyName = 'Du monde entier' ;
group by oderdate
;

#10

select round(avg(datediff (shippeddate, orderdate))) as 'Délai moyen de livraison en jours'
from orders;
