PROMPT "modification d'un secteur"
SET DEFINE ON
begin
UPDATE utilisateurs
set admin_id = 'YES' 
WHERE  email = '&Votre_adresse_mail'
AND '&Votre_mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%');
end;
/

@@FEATURES/utilisateur/List