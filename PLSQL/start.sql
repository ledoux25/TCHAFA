PROMPT **************  BIENVENUE  SUR TCHAFA ***************
PROMPT
PROMPT 1.Incription
PROMPT 2.Connexion
PROMPT 3.Quitter

accept selection prompt "Choisisez une option 1-3: "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then '@FEATURES/utilisateur/New.sql'
       when '2' then '@PLSQL/connexion'
       when '3' then 'exit'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.