-- Active: 1664366408140@@127.0.0.1@3306@papyrus
#1
select fournis.numfou, entcom.numcom
from fournis
join entcom on fournis.numfou=entcom.numfou
where fournis.numfou=09120;

#2
select fournis.numfou, entcom.numcom
from fournis
join entcom on fournis.numfou=entcom.numfou;

#3
select fournis.numfou, count(entcom.numcom)
from fournis
join entcom on fournis.numfou=entcom.numfou
group by numfou;

#4
select produit.codart, produit.libart, produit.stkale, produit.stkphy, produit.qteann
from produit
where stkphy<=stkale and qteann<1000;

#5
select fournis.nomfou, fournis.posfou
from fournis
where posfou LIKE '75%' or posfou LIKE'78%' or posfou LIKE'92%' or posfou LIKE'77%';

#6
SELECT *
FROM entcom
WHERE datcom like '%_4_%' and  datcom like '%_3_%';

#7
SELECT entcom.numcom, entcom.datcom, entcom.obscom
from entcom
WHERE entcom.obscom IS NOT NULL;

#8
SELECT entcom.numcom, sum(ligcom.qtecde)
from entcom
join ligcom on entcom.numcom=ligcom.numcom
group by numcom;

#9
SELECT entcom.numcom, priuni, sum(priuni*qtecde)
from entcom
join ligcom on entcom.numcom=ligcom.numcom
join produit on produit.codart=ligcom.codart
group by numcom;

#10
SELECT fournis.nomfou, entcom.numcom, entcom.datcom
from fournis
join entcom on fournis.numfou=entcom.numfou
group by nomfou;

#11
SELECT produit.codart, entcom.numcom,fournis.nomfou, produit.libart, sum(qtecde*priuni)
from produit
join ligcom on produit.codart=ligcom.codart
join entcom on entcom.numcom=ligcom.numcom
JOIN fournis on fournis.numfou=entcom.numfou
WHERE LOCATE('urgent', obscom)!=0; 

#12
select fournis.nomfou, produit.codart
from fournis
JOIN vente on fournis.numfou=vente.numfou
Join produit on produit.codart=vente.codart
where delliv>0;
--!=

#13
SELECT entcom.datcom, entcom.numcom
from entcom
join fournis on fournis.numfou=entcom.numfou
where numcom=70210;

#14
select distinct prix1, libart
from produit
join vente on produit.CODART = vente.CODART
WHERE prix1 < (   
      SELECT MIN(prix1)
      from vente
      WHERE CODART like 'r%'
);  

#15
SELECT distinct produit.codart, nomfou
FROM fournis
JOIN vente on fournis.numfou = vente.numfou
join produit on produit.codart = vente.codart
where stkphy<= (1.5*stkale)
ORDER BY produit.codart, fournis.numfou;

#16
SELECT fournis.numfou, produit.codart, stkphy, stkale
FROM fournis
JOIN vente on fournis.numfou = vente.numfou
JOIN produit on produit.codart = vente.codart
WHERE stkphy <= (1.5*stkale) and delliv>30
group by produit.codart, fournis.numfou ;

#17
SELECT fournis.numfou,  sum(stkphy)
FROM fournis
JOIN vente on fournis.numfou = vente.numfou
JOIN produit on produit.codart = vente.codart
WHERE stkphy <= (1.5*stkale) and delliv>30
group by fournis.numfou 
ORDER BY sum(stkphy)  DESC;

#18
SELECT libart, qteann, SUM(qtecde)
FROM produit
JOIN ligcom ON produit.codart = ligcom.codart
GROUP BY libart
HAVING SUM(qtecde) > (qteann * 1.9);
 
 #19
 SELECT nomfou, (SUM(qtecde * priuni) * 1.2) as 'Prix TTC'
FROM fournis
JOIN vente ON fournis.numfou = vente.numfou
JOIN produit ON vente.codart = produit.codart
JOIN ligcom ON produit.codart = ligcom.codart
JOIN entcom ON ligcom.numcom = entcom.numcom
WHERE YEAR(datcom) = '1993'
GROUP BY nomfou;















