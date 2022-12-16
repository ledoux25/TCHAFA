PROMPT Creating des cle etrangere de la table publication
ALTER TABLE publications
ADD CONSTRAINT besoin_id_fk FOREIGN KEY
(besoin_id) REFERENCES besoins(besoin_id) ON DELETE cascade;
