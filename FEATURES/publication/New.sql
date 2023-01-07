PROMPT ajouter une publication
SET DEFINE ON
DECLARE 
v_salaire       FLOAT       :=      &salaire_payer;
v_death_line    DATE        :=      '&Besion_avant_le';
v_duree         varchar(50) :=      '&pour_une_durée_de';
v_description   varchar(50) :=      '&description_du_besion';    
begin
INSERT INTO PUBLICATIONS (publication_id, publication_date, salaire, death_line, duree, statut_publication, description, besoin_id)
VALUES
(publication_sequence.NEXTVAL, sysdate, v_salaire, TO_DATE(v_death_line,'DD/MM/YYYY'), v_duree, 'OUVERTE', v_description, (select besoin_id from BESOINS  WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5)) AND (user_id = (select user_id from utilisateurs where email = '&Votre_adresse_mail'))));
DBMS_OUTPUT.PUT_LINE('cet utlisateur vient de publier ');
end;
/
@@PLSQL/Publication/transition
