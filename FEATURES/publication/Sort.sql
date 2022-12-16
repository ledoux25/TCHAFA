SET DEFINE ON
SELECT * from publications p JOIN BESOINS b ON (p.besoin_id = b.besoin_id)
WHERE salaire >= &salaire_minimum
AND b.secteur_id = UPPER(SUBSTR('&secteur-rechercher',1,5));


@@FEATURES/publication/List
