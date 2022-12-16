SET DEFINE on
begin
INSERT INTO recommendations(recommendation_id,recom_nom,recom_numero,recom_email,recom_contenue,user_id,recom_statut) VALUES(recommendations_sequence.NEXTVAL,'&Nom_du_recommendant','&Son_numero','&email' ,'&contenue',(select user_id from utilisateurs where email = '&email'),'EN ATTENTE');
end;
/

@@FEATURES/recommendation/List
