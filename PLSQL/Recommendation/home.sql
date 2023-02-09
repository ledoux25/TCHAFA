clear SCREEN
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Faites votre selection:                                     |                           '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Liste de recommendation                    *                |                         '
prompt '                                  |                   *                    2: Ajouter une recommendation                 *                |                         '
prompt '                                  |                   *                    3: Suprimer les recommendationss              *                |                         '
prompt '                                  |                   *                    1: Liste des recommendations                  *                |                       '
prompt '                                  |                   *                    2: Ajouter un recommendation                  *                |                         '
prompt '                                  |                   *                    3: Supprimer les recommendations              *                |                       '
prompt '                                  |                   *                    4: Precedent                                  *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |--------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Choisissez une option 0-4: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/recommendation/List.sql'
       when '2' then 'FEATURES/recommendation/New.sql'
       when '3' then 'FEATURES/recommendation/Del.sql'
       when '4' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.