SELECT * 
from publications p
join besoins b
ON (b.besoin_id = p.besoin_id)
JOIN utilisateurs u
ON (u.user_id = b.user_id)
WHERE u.user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe');

@@PLSQL/Compte/transition