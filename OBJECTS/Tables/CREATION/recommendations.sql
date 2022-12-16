PROMPT Creating table recommendations
CREATE TABLE recommendations(
    recommendation_id integer  NOT NULL,
    recom_nom VARCHAR(40 CHAR),
    recom_numero VARCHAR(13 char), 
    recom_email VARCHAR(30 CHAR),
    recom_contenue VARCHAR(50),
    recom_statut VARCHAR (33 CHAR) DEFAULT 'EN ATTENTE',
    user_id integer
);