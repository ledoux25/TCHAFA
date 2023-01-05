PROMPT "Veillez renseignez les information nécessaire a votre inscrition"
SET DEFINE ON 
set serveroutput on
DECLARE
v_nom           varchar(50)  :=     INITCAP('&Votre_nom');
v_prenom        varchar(50)  :=     INITCAP('&Votre_prenom');
v_numero        varchar(50)  :=     '&Votre_numero';
v_mail          varchar(50)  :=     '&&Votre_adresse_mail';
v_mot_de_passe  varchar(50)  :=     '&&Votre_mot_de_passe';
begin
INSERT INTO UTILISATEURS(user_id,nom, prenom, numero, email, mot_de_passe, statut, admin_id) 
VALUES 
(utilisateur_sequence.NEXTVAL, v_nom, v_prenom, v_numero, v_mail, v_mot_de_passe,'LIBRE', NULL);
end; 
/


@@PLSQL/home