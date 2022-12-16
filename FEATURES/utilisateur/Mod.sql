PROMPT "modification d'un utilisateur"
SET DEFINE ON
begin
UPDATE UTILISATEURS
set &proprieter_a_modifier = '&valeur_qui_remplace'
WHERE(email = '&Votre_adresse_mail'
AND mot_de_passe = '&Votre_mot_de_passe'); 
end;

@@FEATURES/utilisateur/List