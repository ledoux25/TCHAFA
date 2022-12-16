PROMPT Creatiion des cles etrangere de la table recommandation
ALTER TABLE recommendations
ADD CONSTRAINT utilisateur_id_recomm_fk FOREIGN KEY
(user_id) REFERENCES utilisateurs(user_id) ON DELETE cascade;