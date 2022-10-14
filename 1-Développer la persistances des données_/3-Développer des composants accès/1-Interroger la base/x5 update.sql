-- Active: 1664366408140@@127.0.0.1@3306@papyrus
#1
UPDATE vente
set prix1 = prix1 * 1.04
and prix2 = prix2 * 1.02
where numfou = 9180
;
#2
update vente
set prix2 = prix1
where prix2 = 0;

#3
UPDATE entcom
join fournis on fournis.numfou = entcom.numfou
set obscom = '*****'
where satisf < 5
;

#4
delete from vente
where codart ='I110'
;
delete from produit
where codart ='I110'
;

#5



