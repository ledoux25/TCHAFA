PROMPT "Veillez renseignez les information nécessaire a votre inscrition"
SET DEFINE ON 
begin
INSERT INTO UTILISATEURS(user_id,nom, prenom, numero, email, mot_de_passe, statut, admin_id) VALUES (utilisateur_sequence.NEXTVAL , INITCAP('&Votre_nom'), INITCAP('&Votre_prenom'), '&Votre_numero', '&Votre_adresse_mail', '&Mot_de_passe','LIBRE', NULL);
end; 
/

@@FEATURES/utilisateur/List