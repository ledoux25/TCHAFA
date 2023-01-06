clear screen
SELECT * FROM liste_secteurs 
where user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe');
@@PLSQL/Compte/transition.sql