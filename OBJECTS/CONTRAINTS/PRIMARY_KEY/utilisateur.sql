PROMPT Ajout de la cle primaire de la table utilisateur

ALTER TABLE utilisateurs
ADD
CONSTRAINT users_user_id_pk PRIMARY KEY (user_id);