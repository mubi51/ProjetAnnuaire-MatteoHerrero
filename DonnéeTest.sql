#Catégorie : 

INSERT INTO `categorie` (`IdCategorieDuSite`, `CategorieDesSites`) VALUES (NULL, 'Voiture');

INSERT INTO `categorie` (`IdCategorieDuSite`, `CategorieDesSites`) VALUES (NULL, 'Plomberie');

INSERT INTO `categorie` (`IdCategorieDuSite`, `CategorieDesSites`) VALUES (NULL, 'Batiment');

#Clients : 

INSERT INTO `client` (`IDClient`,`NomClient`,`PrenomClient`,`IdentifiantClient`,`AdresseMailClient`, `MdpClient`, `AnneedenaissanceClient`, `VilleClient`, `CodePostalClient`, `AdressClient`) VALUES (NULL,'Herrero','Matteo','masta','masta@mail.fr', '1234', '1997-08-05', 'Reims', '51100', '14 rue Camille le noir');

INSERT INTO `client` (`IDClient`, `NomClient`, `PrenomClient`, `AdresseMailClient`, `MdpClient`, `AnneedenaissanceClient`, `VilleClient`, `CodePostalClient`, `AdressClient`, `IdentifiantClient`) VALUES (NULL, 'Dupont', 'Pierre', 'pierre@gmail.com', '1234', '1994-08-10', 'Saint-Denis', '93000', '13 rue Boule', 'valou');

INSERT INTO `client` (`IDClient`, `NomClient`, `PrenomClient`, `AdresseMailClient`, `MdpClient`, `AnneedenaissanceClient`, `VilleClient`, `CodePostalClient`, `AdressClient`, `IdentifiantClient`) VALUES (NULL, 'Suu', 'Jin', 'jin@gmail.com', '1234', '2002-08-14', 'Marseille', '13000', '22 rue Ricard', 'Ricard');


#Admin :

INSERT INTO `admin` (`IDAdmin`, `MdpAdmin`, `AdresseMailAdmin`, `IdentifiantAdmin`) VALUES (NULL, '1234', 'mail@mail.com', 'mamama');


#MotCles

INSERT INTO `motcle` (`IdMotCles`, `MotCles`) VALUES (NULL, 'Peugeot');
INSERT INTO `motcle` (`IdMotCles`, `MotCles`) VALUES (NULL, 'Paris');
INSERT INTO `motcle` (`IdMotCles`, `MotCles`) VALUES (NULL, 'Batiment');

#MotClesSite

INSERT INTO `motsclessite` (`IdMotCles`, `IdSite`) VALUES ('1', '1');

INSERT INTO `motsclessite` (`IdMotCles`, `IdSite`) VALUES ('2', '2');

INSERT INTO `motsclessite` (`IdMotCles`, `IdSite`) VALUES ('3', '4');


#Site

ALTER TABLE `site` CHANGE `Image` `Image` MEDIUMBLOB NOT NULL;
INSERT INTO `site` (`IdSite`, `approuve`, `Description`, `SiteClient`, `IDAdmin`, `IdCategorieDuSite`, `IDClient`) VALUES (NULL, '1', 'Un site', 'https//:ph-auto-net.com', '1', '1', '1');

INSERT INTO `site` (`IdSite`, `approuve`, `Description`, `SiteClient`, `IDAdmin`, `IdCategorieDuSite`, `IDClient`) VALUES (NULL, '1', 'Un site de plomberie', 'https//:paris-plomberie.com', '1', '2', '3')

INSERT INTO `site` (`IdSite`, `approuve`, `Description`, `SiteClient`, `IDAdmin`, `IdCategorieDuSite`, `IDClient`) VALUES (NULL, '1', 'Entreprise batiment', 'https//:marseille-batiment.com', '1', '3', '5');


#Requète:

#Catégorie : 

SELECT * FROM `categorie` WHERE CategorieDesSites = 'voiture'
SELECT * FROM categorie union SELECT * FROM motcle



#Clients : 

#Recherche
SELECT * FROM client WHERE NomClient = 'Dupont';
SELECT * FROM `client` WHERE AdresseMailClient = 'masta@mail.fr';
SELECT * FROM client WHERE YEAR(AnneedenaissanceClient)<1997;
SELECT * FROM `client` WHERE VilleClient in ('Reims', 'Saint-Denis');

SELECT * FROM `client`,`site` WHERE client.IDClient=site.IdSite


#Admin :

#Se connecter
SELECT * FROM `admin` WHERE IdentifiantAdmin = 'mamama';
SELECT * FROM `admin` WHERE IdentifiantAdmin ='mamama' and MdpAdmin ='1234';


#Approuver un site

SELECT * FROM `admin`,`site` WHERE admin.IDAdmin=site.IDAdmin;


#MotCles

#Recherche
SELECT * FROM `motcle` WHERE MotCles ='Peugeot';


#MotClesSite


SELECT * FROM `motsclessite` WHERE IdSite ='2';


#Site

#Supprimer un site
DELETE FROM site WHERE IdSite ='4';
