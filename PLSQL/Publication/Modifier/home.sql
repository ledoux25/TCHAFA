clear scre
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                          Faites votre selection:                                     |                         '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                     1: Modifier le deathline                     *                |                         '
prompt '                                  |                   *                     2: Modifer le salaire                        *                |                         '
prompt '                                  |                   *                     3: Precedent                                 *                |                         '
prompt '                                  |                   *                     0: Quitter                                   *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |--------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Choisissez une option 0-3: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/publication/Mod_date.sql'
       when '2' then 'FEATURES/publication/Mod_salaire.sql'
       when '6' then 'PLSQL/Plubication/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script
/