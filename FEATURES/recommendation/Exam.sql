PROMPT "modification d'un secteur"
SET DEFINE ON
v_recom_statut      varchar(50) :=  '&valeurs';
v_nom_recomm        varchar(50) :=  '&Nom_du_recommendant';
begin
UPDATE RECOMMENDATIONS
set recom_statut = v_recom_statut
WHERE recom_nom  = v_nom_recomm
AND (user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail'))
AND ('&Votre_mot_de_passe' IN (select mot_de_passe from utilisateurs where admin_id LIKE '%YES%'));
end;
/

@@PLSQL/Recommendation/transition.sql
