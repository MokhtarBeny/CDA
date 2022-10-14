CREATE TABLE personne (
	per_num INT PRIMARY KEY AUTO_INCREMENT UNIQUE NOT NULL,
	per_nom VARCHAR(50),
	per_prenom VARCHAR(50), 
	per__adresse VARCHAR(50),
	per_ville VARCHAR(50)
	);
	
CREATE TABLE groupe(
	gro_num INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	gro_libelle VARCHAR(50) 
	);
	
CREATE TABLE appartient(
	per_num INT  NOT NULL,
	gro_num INT  NOT NULL,
	FOREIGN KEY (gro_num) REFERENCES groupe(gro_num),
	FOREIGN KEY (per_num) REFERENCES personne(per_num)
	
	);
	
	