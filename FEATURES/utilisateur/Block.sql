PROMPT "modification d'un secteur"
SET DEFINE ON
PROMPT"Entrez les infos de la personne a bloquer"
begin
UPDATE UTILISATEURS
set statut = 'BLOQUER'
WHERE nom = INITCAP('&nom') 
AND prenom = INITCAP('&prenom')
AND ('&mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%'));
end;
/

@@FEATURES/utilisateur/List