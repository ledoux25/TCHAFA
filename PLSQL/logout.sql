clear screen

PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                        Voulez-vous vous deconnecter? :                                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1.Oui                                         *                |                         ' 
prompt '                                  |                   *                    2.Non                                         *                |                         '
prompt '                                  |                   *                                                                  *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '


set term off
set define ON

column script new_value v_script

select case '&selection.'
       when '1' then '@PLSQL/start.sql'
       when '2' then '@PLSQL/Compte/home.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script