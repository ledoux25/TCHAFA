-- DECLARE
-- v_email varchar(20) := &mail,
-- mdp varchar(20) := &mdp,
-- numero int;
-- begin
-- select count(first_name) 
-- into numero
-- from utilisateurs
-- where email = v_email 
-- and mot_de_passe = mdp;

-- if numero >= 1 then
--     DBMS_OUTPUT.PUT_LINE('fuck off');
--     end if;
--     end;
--     /

-- set serveroutput on
-- column script new_value v_script    
-- select case         
--        else 'echec dauthentification'
--        end as script 
-- from dual;
-- /
-- set term on
-- @select script from dual



-- accept selection prompt "Enter option 1-3: "

-- set term 
set define on

column script new_value v_script

select case 
       when (select count(nom) from utilisateurs where email ='&Votre_adresse_mail' and mot_de_passe = '&Votre_mot_de_passe') >= 1 then '@PLSQL/home'       
        else 'echec dauthentification'
       end as script 
from dual;

set term on

@&v_script.