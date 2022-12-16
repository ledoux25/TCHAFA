PROMPT "Veillez renseignez les information nécessaire a la Suppression"
SET DEFINE ON 
begin
DELETE FROM Recommendations
WHERE (publication_date BETWEEN '&date_min_de_intervalle' AND '&date_max_de_lintervalle')
AND besoin_id = (select besoin_id from BESOINS  WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5)) AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur')));
end; 
/

@@FEATURES/publication/List
