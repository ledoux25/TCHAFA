PROMPT Ajout de la cle primaire de la table besoin_realiser

ALTER TABLE besoin_realiser
ADD
CONSTRAINT besoin_realise_besoin_realise_id_pk PRIMARY KEY (besoin_realiser_id);
