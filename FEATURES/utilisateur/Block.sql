PROMPT "modification d'un secteur"
SET DEFINE ON
PROMPT"Entrez les infos de la personne a bloquer"
DECLARE
v_name      varchar(50) ;=  '&nom';
v_surname   varchar(50) :=  '&prenom';
begin
UPDATE UTILISATEURS
set statut = 'BLOQUER'
WHERE nom = INITCAP(v_name) 
AND prenom = INITCAP(v_surname)
AND ('&mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%'));
end;
/

@@FEATURES/utilisateur/List