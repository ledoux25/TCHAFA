PROMPT creation des cles etrangeres de la candidature

ALTER TABLE candidatures
ADD CONSTRAINT utilisateur_id_c_fk FOREIGN KEY 
(user_id) REFERENCES utilisateurs(user_id);

ALTER TABLE candidatures
ADD CONSTRAINT publication_id_fk FOREIGN KEY
(publication_id) REFERENCES publications(publication_id) ON DELETE cascade;

ALTER TABLE candidatures
ADD CONSTRAINT besoins_rea_id_fk FOREIGN KEY
(besoin_rea_id) REFERENCES besoin_realiser(besoin_realiser_id )ON DELETE cascade;