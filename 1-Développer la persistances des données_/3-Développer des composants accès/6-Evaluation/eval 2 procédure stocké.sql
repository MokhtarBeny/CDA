-- Active: 1664366408140@@127.0.0.1@3306@northwind

DELIMITER $

CREATE PROCEDURE dernierecommmande(
    IN nomclient varchar(50)     
)
BEGIN
    select max(orderDate)
    from orders as o 
    join customers as c on c.CustomerID = o.CustomerID
    where c.CompanyName = nomclient ;
END $

DELIMITER ;

call dernierecommmande('Vins et alcools Chevalier');

drop PROCEDURE  dernierecommmande;


SHOW PROCEDURE STATUS ;

----------------------------------------------------------

DELIMITER $

CREATE PROCEDURE delaimoyenlivraison(
    in nomclient varchar(50)
)   
BEGIN
    select companyname, round(avg(datediff (shippeddate, orderdate))) as 'Délai moyen de livraison en jours'
from orders as o
join customers as c on c.CustomerID = o.CustomerID
where nomclient = CompanyName
GROUP BY companyname
;  
END
$

DELIMITER ;

call delaimoyenlivraison ('Alfreds Futterkiste');

drop PROCEDURE  delaimoyenlivraison;


----------------------------------------------------------------------------

