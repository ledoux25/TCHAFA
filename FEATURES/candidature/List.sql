 
 clear screen

SELECT * 
FROM CANDIDATURES c
JOIN publications p
ON (p.publication_id = c.publication_id)
join besoins b
ON (b.besoin_id = p.besoin_id)
JOIN utilisateurs u
ON (u.user_id = b.user_id)
WHERE user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe');

@@PLSQL/home