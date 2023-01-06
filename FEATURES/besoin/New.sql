PROMPT ajouter un besoin
SET DEFINE ON
DECLARE
v_paiement        varchar(15)           := &mode_paiement(mois,jour,ans);
v_localisation    varchar(20)           := &votre_ville;
n_user_id         integer               := (select user_id from utilisateur where email = '&Votre_adresse_mail');
n_secteur_id      integer               := UPPER(SUBSTR('&secteur',1,5))
Begin
INSERT INTO 
     BESOINS(besoin_id,paiement_par,localisation,user_id,secteur_id) 
VALUES
     (besion_sequence.NEXTVAL,'&mode_paiement(mois,jour,ans)' ,'&votre_ville',n_user_id ,n_secteur_id);
end;
/
@@FEATURES/besoin/List
