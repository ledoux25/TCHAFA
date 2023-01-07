clear screen
declare
begin 
SELECT * FROM BESOINS
WHERE user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe');
DBMS_OUTPUT.PUT_LINE(' VOILA LA LISTE DE VOS BESOINS');
end;
/
@PLSQL/Besoin/transition.sql