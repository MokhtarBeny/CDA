#1

SELECT * FROM employe;

#2

SELECT * FROM dept;

#3

SELECT nom,dateemb,nosup,nodep,salaire FROM employe;

#4

SELECT DISTINCT titre, FROM employe;

#5

SELECT DISTINCT  titre,nosup FROM employe;

#6

SELECT nom,noemp,nodep  FROM employe WHERE titre='secrétaire'; 

#7

SELECT nom,nodept FROM dept WHERE nodept>40;

#8

SELECT nom,prenom FROM employe WHERE nom<prenom;

#9

SELECT nom,salaire,nodep FROM employe WHERE titre='représentant' AND nodep>35 AND salaire>20000;

#10

SELECT nom,titre,salaire FROM employe WHERE titre='représentant' OR titre='président';

#11

SELECT nom,titre,nodep,salaire FROM employe WHERE nodep=34 AND titre='représentant';

#12

SELECT nom,titre,nodep,salaire FROM employe WHERE nodep=34 and titre='secrétaire' or titre='représentant';

#13

SELECT nom,salaire FROM employe WHERE salaire>20000 AND salaire<30000;

#15

SELECT nom FROM employe WHERE nom LIKE'h%';

#16

SELECT nom FROM employe WHERE nom LIKE'%n';

#17

SELECT nom FROM employe WHERE nom LIKE '__u%';

#18

SELECT salaire,nom FROM employe WHERE nodep=41;

#19

SELECT salaire,nom FROM employe WHERE nodep=41;

#20

SELECT titre,salaire,nom FROM employe;

#21

SELECT tauxcom,salaire,nom FROM employe;

#22

SELECT tauxcom,salaire,nom,titre FROM employe where tauxcom IS NULL ;

#23

SELECT nom,salaire,tauxcom,titre FROM employe WHERE tauxcom IS NOT NULL;

#24

SELECT nom,salaire,tauxcom,titre FROM employe WHERE tauxcom<15;

#25

SELECT nom,salaire,tauxcom,titre FROM employe WHERE tauxcom>15;

#26

SELECT nom,salaire,tauxcom,salaire*tauxcom FROM employe;

#27

SELECT nom,salaire,tauxcom,salaire*tauxcom FROM employe WHERE tauxcom IS NOT NULL;

#28

SELECT CONCAT(prenom,' ',nom) as prenom_nom FROM employe;

#29

SELECT SUBSTRING(nom,1,5) FROM employe;

#30

SELECT nom,LOCATE ('r',nom) FROM employe HAVING LOCATE('r', nom) != 0;

#31

SELECT  UPPER(nom), LOWER(nom), nom FROM employe WHERE nom='Vrante';

#32

SELECT nom, LENGTH(nom) FROM employe;





