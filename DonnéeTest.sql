#Catégorie : 

INSERT INTO `categorie` (`IdCategorieDuSite`, `CategorieDesSites`) VALUES (NULL, 'Voiture');

INSERT INTO `categorie` (`IdCategorieDuSite`, `CategorieDesSites`) VALUES (NULL, 'Plomberie');

#Clients : 

INSERT INTO `client` (`IDClient`,'NomClient','PrenomClient',`IdentifiantClient`,`AdresseMailClient`, `MdpClient`, `AnneedenaissanceClient`, `VilleClient`, `CodePostalClient`, `AdressClient`) VALUES (NULL,'Herrero','Matteo','masta','masta@mail.fr', '1234', '1997-08-05', 'Reims', '51100', '14 rue Camille le noir');

#Admin :

INSERT INTO `admin` (`IDAdmin`, `MdpAdmin`, `AdresseMailAdmin`, `IdentifiantAdmin`) VALUES (NULL, '1234', 'mail@mail.com', 'mamama');




