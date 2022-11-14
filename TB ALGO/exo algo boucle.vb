// Exercice 5.1 

variables N en entier
Début
N ← 0
Ecrire " Merci de saisir un nombre entre 1 et 3 "
    TantQue N < 1  OU N > 3 
    Lire N
        Si N < 1 ou N > 3 alors
        Ecrire " saisie  erronnée , merci de saisir un chiffre entre 1 et 3 "
        Finsi
    FinTantQue
Fin

// Exercice 5.2

variables N en entier
Debut
N ← 0
Ecrire " merci de saisir un nombre compris entre 10 et 20 "
    TantQue N < 10 ou N > 20
    Lire N 
        Si N < 10 alors 
        Ecrire " Plus grand "
        SinonSi N > 20 alors
        Ecrire " Plus petit "
        Finsi
    FinTantQue
Fin

//5.3



variables N en entier
Debut
Ecrire " Merci de saisir un nombre"
Lire N 
Stop ←  N+10
Ecrire "voici les  10 nombres suivants"
    TantQue N < Stop
    N ←  N+1
    Ecrire B
    FinTantQue
Fin


//5.4

 Variables N, i en Entier
Debut
Ecrire "Entrez un nombre : "
Lire N
Ecrire "La table de multiplication de ce nombre est : "
Pour i ← 1 à 10
  Ecrire N, " x ", i, " = ", n*i
i Suivant
Fin

//5.5

variables n , i , som entier
Debut
Ecrire "entrez un nombre"
Lire n
som ← 0
Pour i ← 1 a N
    som ← som + i
i suivant
Ecrire " La somme est : " , som
Fin

//5.6

variables N, i , F en entier
Debut 
Ecrire " entre un nombre"
Lire N 
F ← 1
Pour i ← 2 a n
    F ← F * i
i suivant
Ecrire "La factorielle est : " , F
Fin

//5.7

 Variables N, i, PG, IPG en Entier
Debut
PG ← 0
Pour i ← 1 à 20
  Ecrire "Entrez un nombre : "
  Lire N
  Si i = 1 ou N > PG Alors
    PG ← N
    IPG ← i
  FinSi
i Suivant
Ecrire "Le nombre le plus grand était : ", PG
Ecrire "Il a été saisi en position numéro ", IPG
Fin

//5.8

 Variables N, i, PG, IPG en Entier
Debut
N ← 1
i ← 0
PG ← 0
TantQue N <> 0
  Ecrire "Entrez un nombre : "
  Lire N
  i ← i + 1
  Si i = 1 ou N > PG Alors
    PG ← N
    IPG ← i
  FinSi
FinTantQue
Ecrire "Le nombre le plus grand était : ", PG
Ecrire "Il a été saisi en position numéro ", IPG
Fin

//5.9

 Variables E, somdue, M, Reste, Nb10E, Nb5E En Entier
Debut
E ← 1
somdue ← 0
TantQue E <> 0
  Ecrire "Entrez le montant : "
  Lire E
  somdue ← somdue + E
FinTantQue
Ecrire "Vous devez :", somdue, " euros"
Ecrire "Montant versé :"
Lire M
Reste ← M - somdue
Nb10E ← 0
TantQue Reste >= 10
  Nb10E ← Nb10E + 1
  Reste ← Reste – 10
FinTantQue
Nb5E ← 0
Si Reste >= 5
  Nb5E ← 1
  Reste ← Reste – 5
FinSi
Ecrire "Rendu de la monnaie :"
Ecrire "Billets de 10 E : ", Nb10E
Ecrire "Billets de  5 E : ", Nb5E
Ecrire "Pièces de 1 E : ", reste
Fin


//5.10

 Variables N, P, i, A, B en Numérique
Debut
Ecrire "Entrez le nombre de chevaux partants : "
Lire N
Ecrire "Entrez le nombre de chevaux joués : "
Lire P
A ← 1
B ← 1
Pour i ← 1 à P
  A ← A * (i + N - P)
  B ← B * i
i Suivant
Ecrire "Dans l’ordre, une chance sur ", A
Ecrire "Dans le désordre, une chance sur ", A / B
Fin








