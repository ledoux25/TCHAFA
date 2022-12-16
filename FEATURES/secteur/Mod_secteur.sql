PROMPT "modification d'un secteur"
SET DEFINE ON
begin
UPDATE SECTEURS
set &proprieter_a_modifier = '&valeur'
WHERE ( secteur_id = INITCAP('&nom_du_secteur_lier_au_besion'))
AND ('&mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%')); --password de l'admin qui effectue la modification du secteur
end;

@@FEATURES/secteur/List
