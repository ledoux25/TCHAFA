PROMPT "modification d'une publication"

PROMPT "Vous allez renseignez un intervalle de date"
SET DEFINE ON
DECLARE
d_New_SALARY      FLOAT            := &valeur_du_nouveau_salaire
d_date_min      DATE            := '&date_min_de_intervalle';
d_date_max      DATE            := '&date_max_de_lintervalle'; 
v_secteur_id    VARCHAR(50)     := '&Nom_du_secteur_lie_au_besion';
v_mail          varchar(50)     := '&Votre_adresse_mail';
begin

UPDATE PUBLICATIONS
set salaire = d_New_SALARY
WHERE (publication_date BETWEEN d_date_min  AND d_date_max )
AND besoin_id = (select besoin_id from BESOINS  WHERE secteur_id = UPPER(SUBSTR(v_secteur_id , 1, 5)) AND (user_id = (select user_id from utilisateurs where email = v_mail)));
end; 
/

@@FEATURES/publication/List
