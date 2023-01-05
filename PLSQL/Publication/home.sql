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
prompt '                                  |                   *                     1: Nouvelle publication                      *                |                         '
prompt '                                  |                   *                     2: Consulter mes publication                 *                |                         '
prompt '                                  |                   *                     3: Modifier une publication                  *                |                         '
prompt '                                  |                   *                     4: Annuler une publication                   *                |                         '
prompt '                                  |                   *                     5: Consulter les publication                 *                |                         '
prompt '                                  |                   *                     6: Precedent                                 *                |                         '
prompt '                                  |                   *                     0: Quitter                                   *                |                         '
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
       when '1' then 'FEATURES/publication/New.sql'
       when '2' then 'FEATURES/publication/List.sql'
       when '3' then 'PLSQ/Publication/Modifier/home.sql'
       when '4' then 'FEATURES/publication/Del.sql'
       when '5' then 'FEATURES/publication/Select.sql'
       when '6' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.lo