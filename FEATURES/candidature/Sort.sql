
SELECT c.candidature_id, c.statut_candidature, u.nom  "candidat", c.proposition, p.salaire "sal_publication"
from candidatures c 
join utilisateurs u 
on(c.user_id = u.user_id)
join publications p 
on(p.publication_id = c.publication_id)
where (u.user_id = (select user_id from utilisateurs where email = '&email_utilisateur'));