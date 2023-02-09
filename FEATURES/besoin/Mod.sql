PROMPT "modification d'un secteur"
SET DEFINE ON
SET VERIFY off
DECLARE

v_valeur        varchar(50)  := '&Nouvelle_valeur';
v_nom_secteur   varchar(50)  := '&Nom_du_secteur_lie_au_besion';
v_mail          varchar(50)  := '&Votre_adresse_mail';
begin
UPDATE besoins
set &proprieter_a_modifier = v_valeur  
WHERE ( secteur_id = UPPER(SUBSTR(v_nom_secteur,1,5))
AND (user_id = (select user_id from utilisateurs where email = v_mail))); 
end;
/

@PLSQL/Besoin/transition.sql
