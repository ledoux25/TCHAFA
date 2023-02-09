clear screen
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                         Faites votre selection:                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         '     
prompt '                                  |                   *                                                                  *                |                         '
prompt '                                  |                   *                    1: Mon compte                                 *                |                         '
prompt '                                  |                   *                    2: Recommendation                             *                |                         '
prompt '                                  |                   *                    3: Besoins                                    *                |                         '
prompt '                                  |                   *                    4: Candidature                                *                |                         '
prompt '                                  |                   *                    5: Publication                                *                |                         '
prompt '                                  |                   *                    6: Secteur                                    *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '

accept selection prompt "Choisissez une  option 1-6: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'PLSQL/Compte/home.sql'
       when '2' then 'PLSQL/Recommendation/home.sql'
       when '3' then 'PLSQL/Besoin/home.sql'
       when '4' then 'PLSQL/Candidature/home.sql'
       when '5' then 'PLSQL/Publication/home.sql'
       when '6' then 'PLSQL/Secteur/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'PLSQL/exit2.sql'
       end as script
from dual;

set term on

@&v_script.
/