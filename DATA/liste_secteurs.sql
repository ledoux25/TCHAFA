PROMPT inserting table liste_Secteur
SET DEFINE OFF
BEGIN
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(1, 'DOMES', 1, 'MENAGERE');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(2, 'DOMES', 1, 'MAJOR D HOMME');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(3, 'PLOMB', 2, 'PLOMBIER');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(4, 'BATIM', 2, 'ARCHITECHTE');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(5, 'BATIM', 2, 'MACON');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(6, 'JARDI', 2, 'JARDINNIER');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(7, 'EDUCA', 3, 'ENSEIGNANT');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(8, 'TECHN', 4, 'TECHNICIEN');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(9, 'DESIN', 5, 'DESIGNER');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(10, 'DESIN', 5, 'DESSINATEUR');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(11, 'COUTU', 6, 'COUTURIER');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(12, 'ELECT', 7, 'ELECTRICIEN');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(13, 'RESTA', 8, 'CUISINIER');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(14, 'RESTA', 8, 'RESTAURATEUR');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(15, 'FROID', 9, 'FRIGORISTE');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(16, 'ELECT', 10, 'ELECTRICIEN');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(17, 'BATIM', 11, 'ARCHITECHTE');
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(18, 'SECUR', 12, 'DECORATEUR');

end;
/


-- liste_secteur_id integer DEFAULT use_sec_seq.NEXTVAL NOT NULL,
--     secteur_id int,
--     user_id int,
--     profession varchar(25 char)
