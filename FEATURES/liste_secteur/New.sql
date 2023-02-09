PROMPT inserting table liste_Secteur
SET DEFINE OFF
BEGIN
INSERT INTO liste_secteurs(liste_secteur_id, secteur_id, user_id, profession) VALUES(liste_secteur_sequence.NEXTVAL, UPPER(SUBSTR('&secteur',1,5)), (select user_id where email = '&Votre_adresse_mail'), '&Votre_proffession');
end;
/

@@FEATURES/liste_secteur/List
