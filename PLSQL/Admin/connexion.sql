clear screen
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Se connecter en tant que :                                    |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                    1: Admin                                      *                |                         '
prompt '                                  |                   *                    2: User                                       *                |                         '
prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Enter option 0-1: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'PLSQL/Admin/home.sql'
       when '2' then 'PLSQL/home.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script.
/