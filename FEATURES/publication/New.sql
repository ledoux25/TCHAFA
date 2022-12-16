PROMPT ajouter une publication
SET DEFINE ON
begin
INSERT INTO PUBLICATIONS (publication_id, publication_date, salaire, death_line, duree, statut_publication, description, besoin_id) VALUES (publication_sequence.NEXTVAL, sysdate,&salaire_payer,TO_DATE('&Besion_avant_le','DD/MM/YYYY'),'&pour_une_durée_de','OUVERTE','&description_du_besion',(select besoin_id from BESOINS  WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5)) AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur'))));
end;
/

@@FEATURES/publication/List
