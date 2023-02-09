clear screen
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                          Faites votre selection:                                     |                         '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '              
prompt '                                  |                   *                    1: Liste de mes besoins                       *                |                         '
prompt '                                  |                   *                    2: Ajouter un besoin                          *                |                         '
prompt '                                  |                   *                    3: Modifier un besoin                         *                |                         '
prompt '                                  |                   *                    4: Supprimer un besoin                         *                |                         '
prompt '                                  |                   *                    5: Publier un besion                          *                |                         '
prompt '                                  |                   *                    6: Precedent                                  *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |--------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Enter option 0-6: "


set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/besoin/List.sql'
       when '2' then 'FEATURES/besoin/New.sql'
       when '3' then 'FEATURES/besoin/Mod.sql'
       when '4' then 'FEATURES/besoin/Del.sql'
       when '5' then 'FEATURES/publication/New.sql'
       when '6' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script.
/