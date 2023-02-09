clear screen
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Please make a selection:                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Bloquer                                    *                |                         '
prompt '                                  |                   *                    2: Ajouter un ADMIN                           *                |                         '
prompt '                                  |                   *                    3: Precedent                                  *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Enter option 0-6: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/utilisateur/Block.sql'
       when '2' then 'PLSQL/utilisateur/New_admin.sql'
       when '3' then 'PLSQL/Admin/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script.
/