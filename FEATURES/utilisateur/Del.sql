PROMPT "Veillez renseignez les information nécessaire a votre inscrition"
SET DEFINE ON 
DECLARE
v_mail      varchar(50) := '&Votre_adresse_mail';
v_password  varchar(50) := '&Votre_mot_de_passe';
begin
DELETE FROM utilisateurs
WHERE
(
    email = v_mail
    AND 
    mot_de_passe = v_password
);
end; 
/

@@FEATURES/utilisateur/List