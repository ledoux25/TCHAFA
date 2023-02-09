clear screen
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Please make a selection:                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Nouveau                                    *                |                         '
prompt '                                  |                   *                    2: Suprimmer                                  *                |                         '
prompt '                                  |                   *                    3: Modifier                                   *                |                         '
prompt '                                  |                   *                    4: Precedent                                  *                |                         '
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
       when '1' then 'FEATURES/secteur/New.sql'
       when '2' then 'FEATURES/secteur/Del_secteur.sql'
       when '3' then 'FEATURES/secteur/Mod_secteur.sql'
       when '4' then 'PLSQL/Admin/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script.
/