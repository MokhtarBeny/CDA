#1 

SELECT prenom,noregion 
FROM employe
JOIN dept
ON employe.nodep=dept.nodept;


#2

SELECT nodept,employe.nom, dept.nom
FROM dept 
JOIN employe  ON  dept.nodept=employe.nodep ;

#3

SELECT employe.nom, dept.nom
FROM employe 
JOIN dept ON dept.nodept=employe.nodep 
WHERE dept.nom='Distribution';


#4 

SELECT emp.prenom AS nom_emp, emp.salaire , patron.prenom, patron.salaire
FROM employe AS emp
JOIN employe AS patron ON emp.nosup=patron.noemp
where emp.salaire>patron.salaire;

#5

SELECT emp.nom,emp.titre,emp2.titre
FROM employe AS emp
JOIN employe AS emp2 ON emp.titre=emp2.titre
WHERE  emp2.nom=('amartakaldire');

#6

SELECT nom,salaire,nodep
FROM employe 
WHERE salaire> ANY (SELECT salaire FROM employe WHERE nodep=31);

#7 

SELECT nom,salaire,nodep
FROM employe 
WHERE salaire> ALL (SELECT salaire FROM employe WHERE nodep=31);

#8

SELECT nom,titre
FROM employe 
WHERE  nodep=31 AND titre= ANY  (SELECT titre FROM employe WHERE nodep=32)
;

#9

SELECT nom,titre
FROM employe 
WHERE  nodep=31 and titre!= ALL  (SELECT titre FROM employe WHERE nodep=32);

#10

SELECT nom,titre,salaire
FROM employe
WHERE salaire= ANY (SELECT salaire FROM employe WHERE nom='fairent') AND titre= ANY (SELECT titre FROM employe WHERE nom='fairent') ;

#11

SELECT dept.nodept,dept.nom,employe.nom
FROM dept 
LEFT JOIN employe ON employe.nodep=dept.nodept;

#12

SELECT titre, count(noemp)
FROM employe
GROUP BY titre
;

#13


SELECT AVG(salaire), SUM(salaire), noregion
FROM employe
JOIN dept
GROUP BY noregion;

#14

SELECT nodep, COUNT(noemp)
FROM employe
GROUP BY nodep
HAVING COUNT(noemp) >=3;

#15

SELECT  concat(SUBSTRING(nom,1,1), SUBSTRING(prenom,1,1)) AS initial, COUNT(concat(SUBSTRING(nom, 1, 1), SUBSTRING(prenom, 1, 1))) AS initial
FROM employe
GROUP BY concat(SUBSTRING(nom,1,1), SUBSTRING(prenom,1,1))
HAVING COUNT(concat(SUBSTRING(nom,1,1), SUBSTRING(prenom,1,1))) >=3
;

#16

SELECT MAX(salaire) AS salairemax, MIN(salaire) AS salairemin, MAX(salaire)-MIN(salaire)
FROM employe;

#17

SELECT  titre,COUNT(titre)
FROM employe
GROUP BY titre
HAVING count(titre)
;

#18

SELECT titre,COUNT(titre)
FROM employe
GROUP BY titre
HAVING count(titre)>=1
;

#19

SELECT dept.nom,CONCAT(dept.nom, COUNT(noemp))
FROM employe
JOIN dept ON dept.nodept=employe.nodep 
GROUP BY dept.nom
HAVING COUNT(noemp)
;

#20

SELECT titre, AVG(salaire)
FROM employe
GROUP BY titre
HAVING AVG(salaire) > (SELECT AVG(salaire) FROM employe WHERE titre = "représentant")
;


SELECT count(salaire),count(tauxcom)
FROM employe
;

