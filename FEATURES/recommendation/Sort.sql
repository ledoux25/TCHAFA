set define ON

SELECT r.recom_nom, r.recom_numero, r.recom_email, u.nom||' '||u.prenom "nom complet", r.recom_contenue
from recommendations r 
join utilisateurs u 
on(r.user_id = u.user_id)
where u.email = '&Votre_adresse_mail';

@@PLSQL/Recommendation/transition.sql
