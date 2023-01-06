set define ON
SELECT b.besoin_id, b.paiement_par, u.nom
FROM BESOINS b 
join utilisateurs u 
on(u.user_id = b.user_id)
where u.user_id = (select user_id FROM utilisateurs where email = '&Votre_adresse_mail');

@PLSQL/Besoin/transition.sql
