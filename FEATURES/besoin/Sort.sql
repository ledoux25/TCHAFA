SET DEFINE ON
SELECT *
FROM besoins 
where secteur_id = UPPER(SUBSTR('&nom_secteur',1,5));

@PLSQL/Besoin/transition.sql
