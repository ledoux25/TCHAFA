PROMPT inserting candidature
SET DEFINE OFF;
begin
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(candidature_sequence.NEXTVAL,sysdate, 'EN ATTENTE', &salaire_demander ,publication_id,(select user_id where email = '&Votre_adresse_mail')); 
DBMS_OUTPUT.PUT_LINE(' VOTRE CANDIDATURE A ETE RECU AVEC SUCCES');