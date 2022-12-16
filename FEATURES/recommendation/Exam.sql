PROMPT "modification d'un secteur"
SET DEFINE ON
begin
UPDATE RECOMMENDATIONS
set recom_statut = '&valeurs'
WHERE recom_nom = '&Nom_du_recommendant' 
AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur'))
AND ('&mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%'));
end;
/

@@FEATURES/recommendation/List
