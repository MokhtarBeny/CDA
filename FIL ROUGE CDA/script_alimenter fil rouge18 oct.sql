-- Active: 1664366408140@@127.0.0.1@3306@fil_rouge
USE fil_rouge;


 INSERT INTO utilisateur (`Id_utilisateur`,`utilisateur_prenom`,`utilisateur_nom`,`utilisateur_sexe`,`utilisateur_role`,`utilisateur_telephone`,`utilisateur_mdp`,`utilisateur_date_de_naissance`)
VALUES
  (1,"Zephania","Henry","Dr.","quis","01 83 73 18 74","FO0542590528842001","21-07-22"),
  (2,"Sade","Blake","Dr.","per","06 26 17 47 78","HR9093298463836368437","12-02-23"),
  (3,"Maxine","Forrest","Ms.","ac","08 87 65 50 38","LV62CSXV2703632014532","21-06-23"),
  (4,"Timon","August","Ms.","justo","07 54 47 74 35","LU397734968704775449","30-12-22"),
  (5,"Maggie","Brody","Ms.","elit.","04 32 57 38 10","TR858167148045856982271724","31-10-21");

INSERT INTO promo (`Id_promo`,`promo_taux`,`promo_code`,`promo_frais`,`promo_date_debut`,`promo_date_fin`,`promo_montant`,`promo_reduction_valeur`,`promo_pourcentage`)
VALUES
  (1,"6","43",180328856,"20.09.23","07.09.23",387,690,21),
  (2,"8","67",447375108,"14.08.22","21.11.22",528,20,88),
  (3,"16","59",481000539,"28.12.22","16.05.22",122,151,86),
  (4,"16","1",405135088,"18.09.23","10.01.22",28,644,2),
  (5,"6","89",401723710,"05.07.22","26.02.23",597,64,66);

INSERT INTO Fournisseur_Constructeur(`fournisseur_id`,`fournisseur_pays`,`fournisseur_appartement`,`fournisseur_numero`,`fournisseur_nom`,`fournisseur_telephone`,`fournisseur_ville`,`fournisseur_rue`,`fournisseur_mail`,`fournisseur_batiment`)
VALUES
  (1,"Netherlands","301-6985 Cras Av.",32,"Mauris Ut Mi Institute","03 38 13 50 35","Burnie","P.O. Box 235, 4961 Sed Ave","nec@icloud.edu","17"),
  (2,"France","235-293 Egestas Rd.",27,"Ornare Sagittis Felis Foundation","05 41 48 58 91","South Perth","472-4825 Id, Avenue","nam@google.couk","17"),
  (3,"Belgium","P.O. Box 774, 9584 In Ave",13,"Diam Corp.","09 18 63 74 11","Boulogne-sur-Mer","P.O. Box 682, 1680 Dui Ave","proin.eget.odio@google.edu","7"),
  (4,"Germany","Ap #644-8501 Nec Rd.",23,"Ipsum Suspendisse PC","08 65 45 75 56","Borås","9973 Est, Rd.","vel@yahoo.ca","13"),
  (5,"China","P.O. Box 379, 7052 Consectetuer Ave",14,"Elementum Lorem Company","08 18 52 18 25","Pervomaisk","Ap #809-6375 Natoque Rd.","interdum.sed.auctor@outlook.net","1");


INSERT INTO categorie (`categorie_nom`,`Id_categorie`,`categorie_type`)
VALUES
  ("Homme",1,"Type1"),
  ("Femme",2,"Type2"),
  ("Enfant",3,"Type3");


INSERT INTO sous_categorie (`sousCategorie`,`sous_categorie_nom`,`sous_categorie_type`)
VALUES
  (1,"Diovan","pies"),
  (2,"Glipizide","sandwiches"),
  (3,"Paroxetine HCl","soups"),
  (4,"Amoxicillin","pies"),
  (5,"Potassium Chloride","pies");

INSERT INTO adresse

INSERT INTO commande


  INSERT INTO produit (`fournisseur_id`,`produit_nom`,`produit_en_stock`,`description`,`image`,`acitf`,`tva`)
VALUES
  (1,"yellow",59,"Customer Relations","Adobe","0",17),
  (2,"violet",58,"Human Resources","Finale","1",5),
  (3,"orange",10,"Public Relations","Yahoo","1",9),
  (4,"indigo",50,"Media Relations","Finale","0",7),
  (5,"green",71,"Accounting","Sibelius","0",17);

 INSERT INTO detail_commande

 INSERT INTO livraison

 INSERT INTO livraison_detail

 INSERT INTO deduit