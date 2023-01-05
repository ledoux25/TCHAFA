PROMPT ajouter une publication
SET DEFINE ON
DECLARE 
v_salaire       FLOAT       :=      &salaire_payer;
v_death_line    TO_DATE     :=      ('&Besion_avant_le','DD/MM/YYYY');
v_duree         varchar(50) :=      '&pour_une_durée_de';
v_description   varchar(50) :=      '&description_du_besion';
n_besion_id     integer     :=      (select besoin_id from BESOINS  WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5)) AND (user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail')))
begin
INSERT INTO PUBLICATIONS (publication_id, publication_date, salaire, death_line, duree, statut_publication, description, besoin_id)
VALUES
(publication_sequence.NEXTVAL, sysdate, v_salaire, v_death_line, v_duree, 'OUVERTE', v_description, n_besion_id);
end;
/
@@FEATURES/publication/List
