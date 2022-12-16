SET DEFINE ON
Begin
INSERT INTO BESOINS(besoin_id,paiement_par,localisation,user_id,secteur_id) VALUES (besion_sequence.NEXTVAL,'&paiement_par' ,'&Localisation',(select user_id from utilisateur where email = '&Votre_adresse_mail'),UPPER(SUBSTR('&secteur',1,5)));
end;
/

@@FEATURES/besoin/List
