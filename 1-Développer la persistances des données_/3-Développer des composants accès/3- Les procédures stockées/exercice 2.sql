-- Active: 1664366408140@@127.0.0.1@3306@papyrus
DELIMITER $

CREATE PROCEDURE lst_commandes()
BEGIN
        select e.numcom, f.nomfou, p.libart, l.qtecde*l.priuni
from ligcom l
join produit p on p.codart=l.codart
join entcom e on e.numcom=l.numcom
join fournis f on f.numfou=e.numfou
where e.obscom like '%urgent%';
END
$

CALL lst_commandes $
    
DELIMITER ;

