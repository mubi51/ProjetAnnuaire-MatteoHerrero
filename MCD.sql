#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Client
#------------------------------------------------------------

CREATE TABLE Client(
        IDClient               Int  Auto_increment  NOT NULL ,
        MdpClient              Varchar (50) NOT NULL ,
        AnneedenaissanceClient Date NOT NULL ,
        VilleClient            Varchar (50) NOT NULL ,
        CodePostalClient       Int NOT NULL ,
        AdressClient           Varchar (50) NOT NULL ,
        IdentifiantClient      Varchar (50) NOT NULL
	,CONSTRAINT Client_AK UNIQUE (IdentifiantClient)
	,CONSTRAINT Client_PK PRIMARY KEY (IDClient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: ADMIN
#------------------------------------------------------------

CREATE TABLE ADMIN(
        IDAdmin          Int  Auto_increment  NOT NULL ,
        MdpAdmin         Varchar (50) NOT NULL ,
        IdentifiantAdmin Varchar (50) NOT NULL
	,CONSTRAINT ADMIN_AK UNIQUE (IdentifiantAdmin)
	,CONSTRAINT ADMIN_PK PRIMARY KEY (IDAdmin)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Categorie
#------------------------------------------------------------

CREATE TABLE Categorie(
        IdCategorieDuSite Int  Auto_increment  NOT NULL ,
        CategorieDesSites Varchar (50) NOT NULL
	,CONSTRAINT Categorie_PK PRIMARY KEY (IdCategorieDuSite)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Site
#------------------------------------------------------------

CREATE TABLE Site(
        IdSite            Int  Auto_increment  NOT NULL ,
        approuve          Bool NOT NULL ,
        SiteClient        Varchar (50) NOT NULL ,
        IDAdmin           Int NOT NULL ,
        IdCategorieDuSite Int NOT NULL ,
        IDClient          Int NOT NULL
	,CONSTRAINT Site_AK UNIQUE (SiteClient)
	,CONSTRAINT Site_PK PRIMARY KEY (IdSite)

	,CONSTRAINT Site_ADMIN_FK FOREIGN KEY (IDAdmin) REFERENCES ADMIN(IDAdmin)
	,CONSTRAINT Site_Categorie0_FK FOREIGN KEY (IdCategorieDuSite) REFERENCES Categorie(IdCategorieDuSite)
	,CONSTRAINT Site_Client1_FK FOREIGN KEY (IDClient) REFERENCES Client(IDClient)
)ENGINE=InnoDB;

