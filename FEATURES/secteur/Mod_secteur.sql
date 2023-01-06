PROMPT "modification d'un secteur"
SET DEFINE ON
DECLARE
v_modifier          varchar(50)  :=   &proprieter_a_modifier;
v_modifiant         varchar(50)  :=   '&valeur';
v_nom_du_secteur    varchar(50)  :=   '&nom_du_secteur_lier_au_besion';
begin
UPDATE SECTEURS
set  v_modifier = v_modifiant
WHERE ( secteur_nom = INITCAP())
AND ('&mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%')); --password de l'admin qui effectue la modification du secteur
end;

@@FEATURES/secteur/List
