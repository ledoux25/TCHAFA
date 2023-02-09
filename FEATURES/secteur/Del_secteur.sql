PROMPT Supprimmer un secteur
SET DEFINE ON &
DECLARE
v_nom_secteur varchar(50)  :=  '&nom_du_secteur';
v_mot_de_passe varchar(50)  :=  '&Votre_mot_de_passe';
begin
DELETE FROM SECTEURS cascade 
WHERE  secteur_nom = v_nom_secteur
AND (v_mot_de_passe IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%')); 
end;
/

@@PLSQL/Admin/Secteur/transition
