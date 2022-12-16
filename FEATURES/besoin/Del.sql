PROMPT Supprimmer un secteur
SET DEFINE ON 
begin
DELETE FROM BESOINS
WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5))
AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur'));
end;
/

@@FEATURES/besoin/List
