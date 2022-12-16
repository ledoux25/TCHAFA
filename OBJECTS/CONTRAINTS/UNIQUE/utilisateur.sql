PROMPT Creation des contraints unique utilisateurs
ALTER TABLE utilisateurs ADD CONSTRAINT utilisateurs_numero unique (numero) ;
ALTER TABLE utilisateurs ADD CONSTRAINT utilisateurs_email unique (email) ;
ALTER TABLE utilisateurs ADD CONSTRAINT utilisateurs_passeword unique (mot_de_passe) ;