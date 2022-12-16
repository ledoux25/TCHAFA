PROMPT Ajout de la cle primaire de la table recommandation

ALTER TABLE recommendations
ADD
CONSTRAINT recommendation_recommendation_pk PRIMARY KEY (recommendation_id);