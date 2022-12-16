PROMPT Ajout de la cle primaire de la table candidature
ALTER TABLE candidatures
ADD
CONSTRAINT candidature_candidature_id_pk PRIMARY KEY (candidature_id);