PROMPT Creating table liste_secteurs
ALTER TABLE liste_secteurs
ADD CONSTRAINT secteur_id_l_fK FOREIGN KEY
(secteur_id) REFERENCES secteurs(secteur_id) ON DELETE cascade;

ALTER TABLE liste_secteurs
ADD CONSTRAINT user_id_fk FOREIGN KEY
(user_id) REFERENCES utilisateurs(user_id) ON DELETE cascade;