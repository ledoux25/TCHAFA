set define on 

select u.nom||' '||u.prenom as full_name, s.secteur_nom
from utilisateurs u 
join liste_secteurs l 
on(u.user_id = l.user_id)
join secteurs s 
on(s.secteur_id = l.secteur_id)
where l.secteur_id = UPPER(SUBSTR('&nom_du_secteur',1,5));


@@FEATURES/utilisateur/List