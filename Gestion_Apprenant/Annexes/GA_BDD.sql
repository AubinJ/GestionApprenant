#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: GA_Role
#------------------------------------------------------------

CREATE TABLE GA_ROLE(
        ROLE_ID   Int  Auto_increment  NOT NULL ,
        ROLE_NAME Varchar (50) NOT NULL
	,CONSTRAINT GA_ROLE_PK PRIMARY KEY (ROLE_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: GA_User
#------------------------------------------------------------

CREATE TABLE GA_USER(
        UTILISATEUR_ID           Int  Auto_increment  NOT NULL ,
        UTILISATEUR_PRENOM       Varchar (50) NOT NULL ,
        UTILISATEUR_NOMDEFAMILLE Varchar (50) NOT NULL ,
        USER_PASSWORD            Varchar (255) NOT NULL ,
        USER_ACTIVATED           TinyINT NOT NULL ,
        USER_EMAIL               Varchar (255) NOT NULL ,
        ROLE_ID                  Int NOT NULL
	,CONSTRAINT GA_USER_AK UNIQUE (USER_EMAIL)
	,CONSTRAINT GA_USER_PK PRIMARY KEY (UTILISATEUR_ID)

	,CONSTRAINT GA_USER_GA_ROLE_FK FOREIGN KEY (ROLE_ID) REFERENCES GA_ROLE(ROLE_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: GA_Promotion
#------------------------------------------------------------

CREATE TABLE GA_PROMOTION(
        PROMOTION_ID     Int  Auto_increment  NOT NULL ,
        PROMOTION_NAME   Varchar (50) NOT NULL ,
        PROMOTION_START  Date NOT NULL ,
        PROMOTION_END    Date NOT NULL ,
        PROMOTION_PLACES Int NOT NULL
	,CONSTRAINT GA_PROMOTION_PK PRIMARY KEY (PROMOTION_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: GA_Classroom
#------------------------------------------------------------

CREATE TABLE GA_CLASSROOM(
        CLASSROOM_ID        Int  Auto_increment  NOT NULL ,
        CLASSROOM_NAME      Varchar (50) NOT NULL ,
        CLASSROOM_DATE      Date NOT NULL ,
        CLASSROOM_START     Time NOT NULL ,
        CLASSROOM_END       Time NOT NULL ,
        CLASSROOM_PROMOTION Int NOT NULL ,
        CLASSROOM_CODE      Int NOT NULL
	,CONSTRAINT GA_CLASSROOM_PK PRIMARY KEY (CLASSROOM_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: UserHasClassroom
#------------------------------------------------------------

CREATE TABLE USERHASCLASSROOM(
        CLASSROOM_ID   Int NOT NULL ,
        UTILISATEUR_ID Int NOT NULL ,
        USER_ISLATE    TinyINT NOT NULL ,
        USER_ISMISSING TinyINT NOT NULL
	,CONSTRAINT USERHASCLASSROOM_PK PRIMARY KEY (CLASSROOM_ID,UTILISATEUR_ID)

	,CONSTRAINT USERHASCLASSROOM_GA_CLASSROOM_FK FOREIGN KEY (CLASSROOM_ID) REFERENCES GA_CLASSROOM(CLASSROOM_ID)
	,CONSTRAINT USERHASCLASSROOM_GA_USER0_FK FOREIGN KEY (UTILISATEUR_ID) REFERENCES GA_USER(UTILISATEUR_ID)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: UserHasPromotion
#------------------------------------------------------------

CREATE TABLE USERHASPROMOTION(
        UTILISATEUR_ID Int NOT NULL ,
        PROMOTION_ID   Int NOT NULL
	,CONSTRAINT USERHASPROMOTION_PK PRIMARY KEY (UTILISATEUR_ID,PROMOTION_ID)

	,CONSTRAINT USERHASPROMOTION_GA_USER_FK FOREIGN KEY (UTILISATEUR_ID) REFERENCES GA_USER(UTILISATEUR_ID)
	,CONSTRAINT USERHASPROMOTION_GA_PROMOTION0_FK FOREIGN KEY (PROMOTION_ID) REFERENCES GA_PROMOTION(PROMOTION_ID)
)ENGINE=InnoDB;

