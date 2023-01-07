clear screen
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                          Faites votre selection:                                     |                         '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Nouvelle candidature                       *                |                         '
prompt '                                  |                   *                    2: Annuler candidature                        *                |                         '
prompt '                                  |                   *                    3: Liste de canditure                         *                |                         '
prompt '                                  |                   *                    4: Liste de vos candidatures                   *                |                         '
prompt '                                  |                   *                    5: Precedent                                  *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |--------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Enter_option_0-5: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then ''
       when '2' then ''
       when '3' then ''
       when '4' then ''
       when '5' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.