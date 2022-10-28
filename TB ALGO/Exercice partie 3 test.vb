Exercice partie 3  test

//3.1


Variable  nb  en entier

Début

    Écrire " Saisissez un nombre"
    Lire nb

    Si nb > 0 Alors
        Ecrire "Ce nombre est positif"
    sinon   
        Ecrire "Ce nombre est négatif"
    Finsi

Fin



//3.2

Variables nb1 , nb2 en entier

Debut

    Écrire " Saisissez un premier nombre"
    Lire nb1

    Écrire " Saisissez un second nombre"
    Lire nb2


    Si (nb1>0 et nb2<0) or (nb1<0 et nb2>0) Alors
        Ecrire "Le produit des nombres est negatif"
    sinon   
        Ecrire "Le produit des nombres est positif"
    Finsi

    Si (n1=0) ou (n2=0) Alors
        Ecrire ("produit null")
    Sinon
        Si (nb1>0 ) Alors
            Si (nb2<0)  Alors
                Ecrire "Le produit des nombres est negatif"
            sinon   
                Ecrire "Le produit des nombres est positif"
            Finsi
        sinon   
            Si (nb2<0)  Alors
                Ecrire "Le produit des nombres est positif"
            sinon   
                Ecrire "Le produit des nombres est negatif"
            Finsi
        Finsi
    Finsi

Fin


//3.3

Variables nom1, nom2, nom3 en caractère

Debut

    Ecrire "Saisissez le premier nom"
    Lire Nom1
    Ecrire "Saisissez le second nom"
    Lire Nom2
    Ecrire "Saisissez le troisième nom"
    Lire Nom3


Si nom1 < nom2  et nom2 < nom3 Alors
    Ecrire "Les noms sont classés par ordre alphabétique"

sinon 

    Ecrire "Les noms ne sont pas classés par ordre alphabétique"

Finsi

Fin


//3.4


Variable  nb  en entier

Début

Écrire " Saisissez un nombre"
Lire nb

Si nb > 0 Alors
    Ecrire "Ce nombre est positif"

sinon   

    si nb = 0 alors
        Ecrire "Ce nombre est null"
    sinon
        Ecrire "Ce nombre est negatif"
    Finsi

Finsi

Fin

//3.5


Variables nb1 , nb2 en entier

Debut

Écrire " Saisissez un premier nombre"
Lire nb1

Écrire " Saisissez un second nombre"
Lire nb2


Si nb1 * nb2 > 0 Alors
    Ecrire "Le produit des nombres est positif"

    
sinon   

        si nb1* nb2 < 0 alors
        Ecrire "Le produit des nombres est négatif"

        Finsi

sinon
        si nb1 * nb2 = 0
        Ecrire "Le produit des nombres est null"

        Finsi



Finsi

Fin

//3.6


Variables age en entier


Debut

Ecrire "Saisissez l'âge de l'enfant"
Lire age

Si age = 6 ou age = 7 alors
    Ecrire "La catégorie est poussin"

sinon
    Si age = 8 ou age = 9 alors
        Ecrire "La catégorie est pupille"
    sinon
        Si age = 10 ou age = 11 alors
            Ecrire "La catégorie est minime"  
        sinon
            Si age >= 12 alors
                Ecrire "La catégorie est cadet"  
            Finsi
        Finsi
    Finsi    
Finsi


Fin








