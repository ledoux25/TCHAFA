PROMPT Supprimmer un secteur
SET DEFINE ON 
begin
DELETE FROM Recommendations
WHERE recom_nom = '&Nom_du_recommendant' 
AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur'));
end;
/

@@FEATURES/recommendation/List
