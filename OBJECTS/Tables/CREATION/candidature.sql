PROMPT Creating table candidatures 
CREATE TABLE candidatures(
    candidature_id integer  NOT NULL,
    date_candidature DATE ,
    statut_candidature VARCHAR(15),
    proposition float(40),
    publication_id int,
    besoin_rea_id int,
    user_id int
);