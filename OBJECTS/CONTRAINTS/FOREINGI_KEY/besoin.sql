PROMPT Cle etrangere de la table besoin
ALTER TABLE besoins
ADD CONSTRAINT utilisateur_b_id_fk FOREIGN KEY
(user_id) REFERENCES utilisateurs(user_id) ON DELETE cascade;

ALTER TABLE besoins
ADD CONSTRAINT secteur_id_fk FOREIGN KEY
(secteur_id) REFERENCES secteurs(secteur_id) ON DELETE cascade;