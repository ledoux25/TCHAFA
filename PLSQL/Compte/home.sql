clear screen
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT '                                  ---------------------------------------------------------------------------------------------------------                         '                                                                                                                           
PROMPT '                                  |                                                                                                       |                         ' 
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                          Faites votre selection:                                      |                         '
PROMPT '                                  |                   ********************************************************************                |                         ' 
Prompt '                                  |                   *                                                                  *                |                         '
<<<<<<< HEAD
prompt '                                  |                   *                    1: Mes informations                           *                |                         '
prompt '                                  |                   *                    2: Mes sectuers                               *                |                         '
prompt '                                  |                   *                    3: Mes recommendations                        *                |                         '
prompt '                                  |                   *                    4: Mes publications                           *                |                         '
prompt '                                  |                   *                    5: Mes candidatures                           *                |                         '
prompt '                                  |                   *                    6: Mes besoins                                *                |                         '
=======
prompt '                                  |                   *                    1: Mes informations                           *                |                         '
prompt '                                  |                   *                    2: Mes secteurs                               *                |                         '
prompt '                                  |                   *                    3: Mes recommendations                        *                |                         '
prompt '                                  |                   *                    4: Mes publications                           *                |                         '
prompt '                                  |                   *                    5: Mes candidatures                           *                |                         '
prompt '                                  |                   *                    6: Mes besoins                                *                |                         '
>>>>>>> 33c79433e3c610ec585e743ede7a7ba32aca35f6
prompt '                                  |                   *                    7: Precedent                                  *                |                         '
prompt '                                  |                   *                    8: Se deconnecter                             *                |                         '
prompt '                                  |                   *                    0: Quitter                                    *                |                         '
Prompt '                                  |                   *                                                                  *                |                         '
PROMPT '                                  |                   ********************************************************************                |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |                                                                                                       |                         '
PROMPT '                                  |--------------------------------------------------------------------------------------------------------                         '
accept selection prompt "Choisissez une option 0-7: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/utilisateur/List2'
       when '2' then 'FEATURES/liste_secteur/List2'
       when '3' then 'FEATURES/recommendation/List2'
       when '4' then 'FEATURES/publication/List2'
       when '5' then 'FEATURES/candidature/List2'
       when '6' then 'FEATURES/besoin/List2'
       when '7' then 'PLSQL/home.sql'
       when '8' then 'PLSQL/logout.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script