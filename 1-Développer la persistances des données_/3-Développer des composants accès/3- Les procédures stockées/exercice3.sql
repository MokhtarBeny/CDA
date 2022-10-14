-- Active: 1664366408140@@127.0.0.1@3306@papyrus

DELIMITER $

CREATE PROCEDURE CA_Fournisseur(in annee VARCHAR(4))
BEGIN
        SELECT nomfou, (SUM(qtecde * priuni) * 1.2) as 'Prix TTC'
FROM fournis
JOIN vente ON fournis.numfou = vente.numfou
JOIN produit ON vente.codart = produit.codart
JOIN ligcom ON produit.codart = ligcom.codart
JOIN entcom ON ligcom.numcom = entcom.numcom
WHERE YEAR(datcom) = annee
GROUP BY nomfou;
END
$

DELIMITER ;

CALL CA_Fournisseur ('2018');


DROP PROCEDURE CA_Fournisseur;

