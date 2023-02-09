SET DEFINE ON
BEGIN
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(liste_secteur_sequence.NEXTVAL, UPPER(SUBSTR('&secteur',1,5)), (select user_id FROM utilisateurs where email = '&Votre_adresse_mail'), '&Votre_proffession');
end;
/

@@PLSQL/Secteur/transition
