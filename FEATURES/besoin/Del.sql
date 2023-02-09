PROMPT Supprimmer un secteur
SET DEFINE ON
SET VERIFY off
DECLARE 
v_paiement_par    varchar(50)  := '&Paiment_par';
v_nom_secteur   varchar(50)  := '&Nom_du_secteur_lie_au_besion';
v_mail          varchar(50)  := '&Votre_adresse_mail';

begin
DELETE FROM BESOINS
WHERE secteur_id = UPPER(SUBSTR(v_nom_secteur,1,5))
AND (paiement_par = v_paiement_par)
AND (user_id = (select user_id from utilisateurs where email = v_mail));
end;
/

@PLSQL/Besoin/transition.sql
