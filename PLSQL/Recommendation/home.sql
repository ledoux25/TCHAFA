PROMPT
PROMPT
PROMPT
PROMPT
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                          Please make a selection:                                     |                         '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Liste de recommendation                    *                |                         '
prompt '                                  |                   *                    2: Ajouter un recommendation                  *                |                         '
prompt '                                  |                   *                    3: Trier les recommendation                   *                |                         '
prompt '                                  |                   *                    4: Precedent                                  *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |--------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Enter option 0-4: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'PLSQL/Compte/home.sql'
       when '2' then 'PLSQL/Recommendation/home.sql'
       when '3' then 'PLSQL/Besoin/home.sql'
       when '4' then 'PLSQL/Candidature/home.sql'
       when '5' then 'PLSQL/Publication/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.