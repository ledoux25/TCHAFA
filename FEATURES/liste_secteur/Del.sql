PROMPT Supprimmer un secteur de votre liste
SET DEFINE ON 
begin
DELETE FROM liste_secteursK
WHERE secteur_id = UPPER(SUBSTR('&Nom_du_secteur_lie_au_besion',1,5))
AND (user_id = (select user_id from utilisateurs where email = '&email_utilisateur'));
DBMS_OUTPUT.PUT_LINE('SUPPREXION EFFECTUER AVEC SUCCES');
end;
/

@@FEATURES/liste_secteur/List
