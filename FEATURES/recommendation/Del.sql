PROMPT Supprimmer un secteur
SET DEFINE ON 
DECLARE
v_nom_recomm    varchar(50) := '&Mail_du_recommendant';
v_mail          varchar(50) := '&Votre_adresse_mail';
begin
DELETE FROM Recommendations
WHERE recom_email = v_mail
AND (user_id = (select user_id from utilisateurs where email = v_mail ));
end;
/

@@PLSQL/Recommendation/transition.sql
