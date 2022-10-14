-- Active: 1664366408140@@127.0.0.1@3306@northwind

DELIMITER $

CREATE TRIGGER insert_produit AFTER INSERT ON `order details`
FOR EACH ROW
BEGIN
    DECLARE pays VARCHAR(15);

SET pays = (
             SELECT
                suppliers.SupplierID
             FROM
                orders
                JOIN customers ON orders.CustomerID = customers.CustomerID
                JOIN orderdetails ON orders.OrderID = orderdetails.OrderID
                JOIN products ON orderdetails.ProductID = products.ProductID
                JOIN suppliers ON products.SupplierID = suppliers.SupplierID
        WHERE
                suppliers.Country = customers.Country
                AND `order details`.ProductID = NEW.ProductID
                AND `order details`.OrderID = NEW.OrderID
);
if suppliers.country != customers.country
THEN
SIGNAL SQLSTATE '40000'
SET
MESSAGE_TEXT = 'Le pays du client est différent du pays fournisseur !';

 END IF;

 END $


 DELIMITER $





