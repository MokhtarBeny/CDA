
	CREATE DATABASE papyrus;
	USE papyrus;
	
	CREATE TABLE produit(
		produit_codart CHAR(4) PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT ,
		produit_libart VARCHAR(30) NOT NULL,
		produit_stkale INT(10)NOT NULL,
		produit_stkphy INT(10)NOT NULL,
		produit_qteann INT(10)NOT NULL,
		produit_unimes VARCHAR(5)NOT NULL
		);
		
	CREATE TABLE entcom(
		numero_commande INT(10) PRIMARY KEY UNIQUE NOT NULL AUTO_INCREMENT,
		obs_commande VARCHAR(50),
		dat_commande DATE(10),
		numero_fournisseur VARCHAR(25),
		FOREIGN KEY (numero_fournisseur) REFERENCES fournisseur(numero_fournisseur)
		);
		
	CREATE TABLE ligcom(
		numero_lig TINYINT(3) PRIMARY KEY UNIQUE NOT NULL,
		numero_commande INT(10)NOT NULL,
		produit_codart CHAR(4)NOT NULL,
		quantite_commande INT(10)NOT NULL,
		prix_unitaire VARCHAR(50)NOT NULL,
		quantite_liv INT(10)
		der_liv DATETIME(19)NOT NULL,
		FOREIGN KEY (produit_codart) REFERENCES produit(produit_codart)
		FOREIGN KEY (numero_commande) REFERENCES entcom(numero_commande)
		
		);
		
	CREATE TABLE fournisseur(
		numero_fournisseur VARCHAR(25) PRIMARY KEY UNIQUE NOT NULL, 
		nom_fournisseur VARCHAR(25)NOT NULL,
		rue_fournisseur VARCHAR(50)NOT NULL,
		code_postal_fournisseur tinyint(5)NOT NULL,
		ville_fournisseur VARCHAR(30)NOT NULL,
		con_fournisseur VARCHAR(15)NOT NULL,
		satisf TINYINT(2) NOT NULL
		);
		
	CREATE TABLE vente(
		produit_codart CHAR(4)NOT NULL,	
		numero_fournisseur VARCHAR(25)NOT NULL,
		deliliv SMALLINT(5)NOT NULL,
		quantite_1 INT(10)NOT NULL,
		prix_1 VARCHAR(50)NOT NULL,
		quantite_2 INT(10),
		prix_2 VARCHAR (50),
		quantite_3 INT(10),
		prix_3 VARCHAR(50),
		FOREIGN KEY (produit_codart) REFERENCES produit(produit_codart)
		FOREIGN KEY (numero_fournisseur) REFERENCES fournisseur(numero_fournisseur)
		);
		
		
		CREATE INDEX acces_fornisseur_rapide ON entcom (numero_fournisseur);
		
		
		

		
		
		
			
		
		
	
			
				
		
		
	
	
	


	 	
	 	
	 	
	 	
	 	
	
		
	
	  