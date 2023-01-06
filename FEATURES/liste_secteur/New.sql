declare
    v_paiement_par VARCHAR (10 char) := '&paiement_par';
    v_localisation VARCHAR (15 char)   := '&votre_localisation';
    v_user_id int;
    v_secteur_id varchar(5) := '&secteur_id' ;
    v_secteur_nom varchar(10) := '&nom_secteur';
    BEGIN
     select user_id into v_user_id
     from utilisateurs
     where email = '&Votre_adresse_mail';
     
     INSERT INTO BESOINS(besoin_id,paiement_par,localisation,user_id,secteur_id) 
     VALUES (besion_sequence.NEXTVAL,v_paiement_par,v_localisation, v_user_id,v_secteur_id);--1


    END 
    /

@@FEATURES/liste_secteur/List
