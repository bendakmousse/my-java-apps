
DROP DATABASE IF EXISTS lib_db;
CREATE DATABASE lib_db;
USE lib_db;


DROP TABLE IF EXISTS Admin;

CREATE TABLE Admin (username VARCHAR (30) PRIMARY KEY ,
						password VARCHAR(30),
						fullname VARCHAR(50));

DROP TABLE IF EXISTS Auteur;

CREATE TABLE Auteur (num_auteur VARCHAR (30) PRIMARY KEY ,
						nom_auteur VARCHAR(30),
						prenom_auteur VARCHAR(30),
						date_n_auteur DATE);

DROP TABLE IF EXISTS Livre;

CREATE TABLE Livre (issn_livre VARCHAR(30) PRIMARY KEY ,	
						num_auteur VARCHAR (30)  ,
						titre_livre VARCHAR(30),
						resume_livre VARCHAR(30),
						n_p_livre INTEGER (4),
						domaine_livre VARCHAR(30),
						CONSTRAINT fk FOREIGN KEY (num_auteur) REFERENCES Auteur(num_auteur));
						

DESCRIBE Admin;
DESCRIBE Auteur;
DESCRIBE Livre;

SELECT * FROM Admin ;
SELECT * FROM Auteur ;
SELECT * FROM Livre;