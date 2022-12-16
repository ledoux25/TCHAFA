PROMPT Ajout de la cle primaire de la table secteur

ALTER TABLE secteurs
ADD
CONSTRAINT secteurs_sector_pk PRIMARY KEY (secteur_id);
