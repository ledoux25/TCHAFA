PROMPT ajouter un secteur
SET DEFINE ON
DECLARE
v_secteur_id   varchar(50) :=  '&secteur_id';
v_nom_secteur  varchar(50) :=  '&nom_du_secteur';
v_description  varchar(50) :=  '&description_du_secteur';
begin
INSERT INTO SECTEURS(secteur_id ,secteur_nom, secteur_description) VALUES (v_secteur_id, v_nom_secteur,v_description);
end;
/

@@FEATURES/secteur/List
