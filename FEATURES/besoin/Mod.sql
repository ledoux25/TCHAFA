PROMPT "modification d'un secteur"
SET DEFINE ON
begin
UPDATE besoins
set &proprieter_a_modifier = '&valeur'
WHERE ( secteur_id = UPPER(SUBSTR('&nom_du_secteur',1,5))
AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur'))); 
end;
/

@@FEATURES/besoin/List
