PROMPT Ajout de la cle primaire de la table Liste secteur 
ALTER TABLE liste_secteurs
ADD
CONSTRAINT liste_secteur_liste_secteur_pk PRIMARY KEY (liste_secteur_id);