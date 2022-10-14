use  northwind;

#1
select CompanyName, ContactName, ContactTitle, Phone from customers
WHERE country = 'France';


#2
SELECT productname, unitprice
 from products
 join suppliers on suppliers.supplierid = products.supplierid
 where suppliers.supplierid = 1;

 #3


SELECT companyname, SUM(quantity)
FROM `order details` as od
JOIN products ON products.productid = od.productid
JOIN suppliers ON suppliers.supplierid = products.productid
WHERE country = 'france'
;

