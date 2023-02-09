PROMPT Supprimmer un secteur de votre liste
SET DEFINE ON 
begin
DELETE FROM liste_secteurs
WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5))
AND (user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail'));
end;
/

@@PLSQL/Secteur/transition
