clear screen

PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                        Faites une selection :                                         |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
<<<<<<< HEAD
prompt '                                  |                   *                    1.Incription                                  *                |                         ' 
=======
PROMPT '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1.Inscription                                 *                |                         ' 
>>>>>>> 62aca58725d2594e85515383fb0f7cdf218d70d1
prompt '                                  |                   *                    2.Connexion                                   *                |                         '
prompt '                                  |                   *                    3.Quitter                                     *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '

accept selection prompt "Choissisez une option 1-3: "

set term off
set define ON

column script new_value v_script

select case '&selection.'
       when '1' then '@FEATURES/utilisateur/New.sql'
       when '2' then '@PLSQL/connexion'
       when '3' then '@PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script
/