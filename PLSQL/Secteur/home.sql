clear SCREEN
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                          Please make a selection:                                     |                         '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Liste des secteurs                         *                |                         '
prompt '                                  |                   *                    2: Ajouter un secteur                         *                |                         '
prompt '                                  |                   *                    3: Suprimer un secteur                        *                |                         '
prompt '                                  |                   *                    4: Mes secteur                                *                |                         '
prompt '                                  |                   *                    5: Precedent                                  *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Enter option 0-5: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/secteur/Select.sql'
       when '2' then 'FEATURES/liste_secteur/New.sql'
       when '3' then 'FEATURES/liste_secteur/Del.sql'
       when '4' then 'FEATURES/liste_secteur/List.sql'
       when '5' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script
end;