clear screen
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Please make a selection:                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Utilisateur                                *                |                         '
prompt '                                  |                   *                    2: Confirmer une recommendation               *                |                         '
prompt '                                  |                   *                    3: Secteur                                    *                |                         '
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
       when '1' then 'PLSQL/Admin/User/home.sql'
       when '2' then 'FEATURES/Recommendation/home.sql'
       when '3' then 'PLSQL/Besoin/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script.
/