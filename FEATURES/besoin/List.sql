clear screen
<<<<<<< HEAD
SET VERIFY off
=======
declare
begin 
>>>>>>> 62aca58725d2594e85515383fb0f7cdf218d70d1
SELECT * FROM BESOINS
WHERE user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe');
DBMS_OUTPUT.PUT_LINE(' VOILA LA LISTE DE VOS BESOINS');
end;
/
@PLSQL/Besoin/transition.sql