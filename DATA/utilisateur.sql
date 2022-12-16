
PROMPT INSERTING into UTILISATEURS
SET DEFINE OFF;
begin

INSERT INTO utilisateurs(user_id, nom, prenom, numero, email, mot_de_passe, statut, admin_id) VALUES (1,'Sanguo','Joseph','690-375-863','sanguojoseph5@gmail.com','admin','LIBRE','YES');--1
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (2,'Atsangou','Darel','692-345-123','atsangoudarel23@gmail.com','atsa','LIBRE');--2
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (3,'Chiemo','Patrice','656-239-003','Chiemopatrice03@gmail.com','chie','OCCUPER');
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (4,'Awounan','Ptone','677-340-323','aowounangstonel23@gmail.com','awou','BLOQUER');--4
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (5,'Chiemo','Patrice','656-232-003','Chiemopatrce03@gmail.com','cie','OCCUPER');--5
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (6,'Awounang','Stone','677-345-323','aowoangstonel23@gmail.com','awSu','BLOQUER');--6
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (7,'Bavoua','Borel','657-840-103','Bavouaborel@gmail.com','bavou','LIBRE');--6
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (8,'Biyack','Florent','659-245-023','Biyackflorentl3@gmail.com','biyac','LIBRE');--7
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (9,'Djouda','Patric','690-367-143','Djoudapatric23@gmail.com','djou','BLOQUER');--8
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (10,'Ekonke','Preshly','677-445-193','Ebonkepreshly03@gmail.com','ekon','OCCUPER');--9
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (11,'Fotso','Manuel','656-305-893','fotsomanuel@gmail.com','fots','LIBRE');--10
INSERT INTO UTILISATEURS(user_id, nom, prenom, numero, email, mot_de_passe, statut) VALUES (12,'Jidjou','Audrey','692-345-403','Djidjouaudrey30@gmail.com','djid','OCCUPER');--11
end;
/

