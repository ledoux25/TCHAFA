PROMPT Ajout de la cle primaire de la table publication

ALTER TABLE publications
ADD
CONSTRAINT publication_publication_id_pk PRIMARY KEY (publication_id);