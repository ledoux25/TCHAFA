clear screen

PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Please make a selection:                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1.Incription                                  *                |                         ' 
prompt '                                  |                   *                    2.Connexion                                   *                |                         '
prompt '                                  |                   *                    3.Quitter                                     *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '

accept selection prompt "Choisisez une option 1-3: "

set term off
set define ON

column script new_value v_script

select case '&selection.'
       when '1' then '@FEATURES/utilisateur/New.sql'
       when '2' then '@PLSQL/connexion'
       when '3' then '@PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script