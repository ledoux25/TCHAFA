SET DEFINE 
DECLARE
v_nom_recomm    varchar(50) :=  '&Nom_du_recommendant';
v_numero        varchar(50) :=  '&Son_numero';
v_mail          varchar(50) :=  '&email';
v_contenu       varchar(50) :=  '&contenue';

begin
INSERT INTO recommendations(recommendation_id,recom_nom,recom_numero,recom_email,recom_contenue,user_id,recom_statut)
 VALUES
 (recommendations_sequence.NEXTVAL, v_nom_recomm, v_numero, v_mail, v_contenu, (select user_id from utilisateurs where email = '&Votre_adresse_mail'),'EN ATTENTE');
end;
/
@@PLSQL/Recommendation/transition
