clear screen

PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                        Faites une selection :                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1.Inscription                                  *                |                         ' 
prompt '                                  |                   *                    2.Connexion                                   *                |                         '
prompt '                                  |                   *                    3.Quitter                                     *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '

<<<<<<< HEAD
accept selection prompt "Choissisez une option 1-3: "
=======
accept selection prompt "Choisissez une option 1-3: "
>>>>>>> 33c79433e3c610ec585e743ede7a7ba32aca35f6

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