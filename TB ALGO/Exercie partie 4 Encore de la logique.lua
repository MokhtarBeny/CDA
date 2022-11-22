Exercie partie 4  Encore de la logique


//4.1
---------------------------------------------------------------------
Formulez un algorithme équivalent à l’algorithme suivant :
Si Tutu > Toto + 4 OU Tata = "OK" Alors
Tutu ← Tutu + 1
Sinon
Tutu ← Tutu – 1
Finsi
---------------------------------------------------------------------

Si Tutu < Toto + 4 ET Tata != "OK" Alors

  Tutu ← Tutu - 1
Sinon
  Tutu ← Tutu + 1
Finsi


//4.2
------------------------------------------------------------------------------
Si Tutu <= Toto + 4 ET Tata <> "OK" Alors
  Tutu ← Tutu - 1
Sinon
  Tutu ← Tutu + 1
Finsi
------------------------------------------------------------------------------


Varibles heure, minute, seconde  en entier

Écrire "Saisissez votre heure"
Lire heure , minute, seconde

si minute = 60 Alors
    minute ← 0
    heure ← heure + 1
Finsi

si heure = 24 Alors
    heure ← 0
Finsi

minute ← minute +1

Ecrire "Dans une minute il sera  ,  heure "h" , minute"min" "

Fin


//4.3

----------------------------------------------------------------------------
 De même que le précédent, cet algorithme doit demander une heure et en afficher une autre. Mais cette fois, il doit gérer également les secondes, et afficher l'heure qu'il sera une seconde plus tard.
Par exemple, si l'utilisateur tape 21, puis 32, puis 8, l'algorithme doit répondre : "Dans une seconde, il sera 21 heure(s), 32 minute(s) et 9 seconde(s)".
NB : là encore, on suppose que l'utilisateur entre une date valide.
------------------------------------------------------------------------------

Variables heure, minute, seconde en entier

Ecrire "Saisissez votre heure"
Lire heure, minute, seconde


si seconde = 60 Alors
    seconde ← 0
    minute ← minute +1
Finsi

si minute = 60 Alors
    minute ← 0
    heure ← heure + 1
Finsi

si heure = 24 Alors
    heure ← 0
Finsi

seconde ← seconde + 1

Ecrire "Dans une seconde , il sera " heure "h", minute "min", seconde "s" 


//4.4

------------------------------------------------------------------------------
Un magasin de reprographie facture 0,10 E les dix premières photocopies, 0,09 E les vingt suivantes
et 0,08 E au-delà. Ecrivez un algorithme qui demande à l’utilisateur le nombre de photocopies
effectuées et qui affiche la facture correspondante.
-------------------------------------------------------------------------------

Variables pp, nbp en entier

DEBUT 

  Ecrire "saisissez le nombre de photocopie"
  LIRE nbp

        si nbp <= 10 Alors
            pp ← n * 0.10

            sinonsi nbp <= 30 alors
            pp ← 1 +  (nbp - 10) * 0.9
            finsi

              Sinon
              pp ← (10 * 0.10) +  (20 * 0.09) + (nbp - 30) * 0.08
              finsi
        finsi

  Ecrire " le prix total est : p "

Fin


//4.5

---------------------------------------------------------------------
Les habitants de Zorglub paient l’impôt selon les règles suivantes :

    les hommes de plus de 20 ans paient l’impôt
    les femmes paient l’impôt si elles ont entre 18 et 35 ans
    les autres ne paient pas d’impôt

Le programme demandera donc l’âge et le sexe du Zorglubien, et se prononcera donc ensuite sur le fait que l’habitant est imposable. 
----------------------------------------------------------------------

Variables sexe en booléen
Variables age en entier
variables impH, impoF en booléen

DEBUT
    Ecrire " saisissez l'âge de l'habitant de Zorglub"
    Lire age

    Ecrire "Saisissez le sexe de l'habitant de Zorglub"
    Lire sexe

    impH ← sexe = H et age >= 20
    impoF ← sexe = F et ( age >=18 et age <= 35 )

      Si impoF ou impH alors
      Ecrire " Cette personne est imposable"

      Sinon
      Ecrire "Cette personne n'est pas imposable"
      Finsi

FIN

//4.6

Variables A, B, C, D en Numérique
Variables C1, C2, C3, C4 en Booléen
Début
Ecrire "Entrez les scores des quatre prétendants :"
Lire A, B, C, D
C1 ← A > 50
C2 ← B > 50 ou C > 50 ou D > 50
C3 ← A >= B et A >= C et A >= D
C4 ← A >= 12,5
Si C1 Alors
  Ecrire “Elu au premier tour"
Sinonsi C2 ou Non(C4) Alors
  Ecrire “Battu, éliminé, sorti !!!”
SinonSi C3 Alors
  Ecrire "Ballotage favorable"
Sinon
  Ecrire "Ballotage défavorable"
FinSi
Fin


//4.7

Variables age, perm, acc, assur en Numérique
Variables C1, C2, C3 en Booléen
Variable situ en Caractère
Début
Ecrire "Entrez l’âge: "
Lire age
Ecrire "Entrez le nombre d'années de permis: "
Lire perm
Ecrire "Entrez le nombre d'accidents: "
Lire acc
Ecrire "Entrez le nombre d'années d'assurance: "
Lire assur
C1 ← age >= 25
C2 ← perm >= 2
C3 ← assur > 5
Si Non(C1) et Non(C2) Alors
  Si acc = 0 Alors
    situ ← "Rouge"
  Sinon
    situ ← "Refusé"
  FinSi
Sinonsi ((Non(C1) et C2) ou (C1 et Non(C2)) Alors
  Si acc = 0 Alors
    situ ← "Orange"
  SinonSi acc = 1 Alors
    situ ← "Rouge"
  Sinon
    situ ← "Refusé"
  FinSi
Sinon
  Si acc = 0 Alors
    situ ← "Vert"
  SinonSi acc = 1 Alors
    situ ← "Orange"
  SinonSi acc = 2 Alors
    situ ← "Rouge"
  Sinon
    situ ← "Refusé"
  FinSi
FinSi
Si C3 Alors
  Si situ = "Rouge" Alors
    situ ← "Orange"
  SinonSi situ = "Orange" Alors
    situ ← "Vert"
  SinonSi situ = "Vert" Alors
    situ ← "Bleu"
  FinSi
FinSi
Ecrire "Votre situation : ", situ
Fin


//4.8

Si M < 1 ou M > 12 Alors
Ecrire "Date Invalide"
SinonSi M = 2 Alors
Si A dp 400 Alors
  Si J < 1 ou J > 29 Alors
    Ecrire "Date Invalide"
  Sinon
    Ecrire "Date Valide"
  FinSi
SinonSi A dp 100 Alors
  Si J < 1 ou J > 28 Alors
    Ecrire "Date Invalide"
  Sinon
    Ecrire "Date Valide"
  FinSi
SinonSi A dp 4 Alors
  Si J < 1 ou J > 29Alors
    Ecrire "Date Invalide"
  Sinon
    Ecrire "Date Valide"
  FinSi
Sinon
  Si J < 1 ou J > 28 Alors
    Ecrire "Date Invalide"
  Sinon
    Ecrire "Date Valide"
  FinSi
FinSi
SinonSi M = 4 ou M = 6 ou M = 9 ou M = 11 Alors
Si J < 1 ou J > 30 Alors
  Ecrire "Date Invalide"
Sinon
  Ecrire "Date Valide"
FinSi
Sinon
Si J < 1 ou J > 31 Alors
  Ecrire "Date Invalide"
Sinon
  Ecrire "Date Valide"
FinSi
FinSi






