clear screen
SET VERIFY off
SELECT * FROM BESOINS
WHERE user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe');

@PLSQL/Besoin/transition.sql