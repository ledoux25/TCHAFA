PROMPT ajouter un besoin
SET DEFINE ON
DECLARE
v_paiment_par     varchar(50) := UPPER('&paiement_par');
v_localisation    varchar(50) := '&Localisation';
Begin
INSERT INTO BESOINS(besoin_id, paiement_par, localisation, user_id, secteur_id) 
VALUES (besion_sequence.NEXTVAL, v_paiment_par , v_localisation, (select user_id from utilisateurs where email = '&Votre_adresse_mail'), UPPER(SUBSTR('&secteur',1,5)));
DBMS_OUTPUT.PUT_LINE('VOTRES BESOINS A ETE CREER AVEC SUCCESS');
end;
/
@PLSQL/Besoin/transition.sql
