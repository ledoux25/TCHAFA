PROMPT Creating table besoins
CREATE TABLE BESOINS(
    besoin_id integer NOT NULL,
    paiement_par VARCHAR (10 char),
    localisation VARCHAR (15 char),
    user_id int,
    secteur_id varchar(5) 
);