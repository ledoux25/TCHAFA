PROMPT inserting candidature
SET DEFINE OFF;
begin
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(1, TO_DATE('26-01-2022', 'DD-MM-YYYY'), 'RETENU', 3500 ,1,8);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(2,TO_DATE('01-02-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 2, 1);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(3,TO_DATE('10-02-2022', 'DD-MM-YYYY'), 'CONFIRMER', 2730, 3,12);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(4,TO_DATE('20-03-2022', 'DD-MM-YYYY'), 'REJETER', 2730, 4, 6);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(5,TO_DATE('12-04-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 5,4);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(6,TO_DATE('15-05-2022', 'DD-MM-YYYY'), 'CONFIRMER',10000, 6,1);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(7,TO_DATE('30-05-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 7, 8);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(8,TO_DATE('06-06-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 8, 10);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(9,TO_DATE('12-07-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 9, 9);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(10,TO_DATE('15-08-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 10, 2);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(11,TO_DATE('12-09-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 11, 8); --aaa
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(12,TO_DATE('30-09-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 12, 1);
INSERT INTO candidatures(candidature_id, date_candidature, statut_candidature, proposition, publication_id, user_id) VALUES(13,TO_DATE('12-10-2022', 'DD-MM-YYYY'), 'RETENU', 2730, 10, 3);
end;
/