
PROMPT "modification d'un utilisateur"
SET DEFINE ON
DECLARE
v_modifier  varchar(50) :=  &proprieter_a_modifier;
v_modifiant varchar(50) :=  '&valeur_qui_remplace';
v_mail      varchar(50) := '&Votre_adresse_mail';
v_password  varchar(50) := '&Votre_mot_de_passe';
begin
UPDATE UTILISATEURS
set v_modifier = v_modifiant
WHERE(email = v_mail
AND mot_de_passe = v_password); 
end;

@@FEATURES/utilisateur/List