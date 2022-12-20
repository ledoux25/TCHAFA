PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT   "-------------------------------DANS CETTE SECTION VOUS PORREZ GERER TOUT CE QUI A TRAIT A VOS RECOMMENDATION "

rompt Please make a selection:
prompt 1: Mes information
prompt 2: Mes sectuers
prompt 3: Mes recommendations
prompt 4: Mes publication
prompt 5: Mes candidature
prompt 6: Mes besoin
prompt 7: Precedent
prompt 0: Quitter

accept selection prompt "Enter option 0-6: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/utilisateur/List'
       when '2' then 'FEATURES/liste_secteur/List'
       when '3' then 'FEATURES/recommendation/List'
       when '4' then 'FEATURES/publication/List'
       when '5' then 'PLSQL/candidature/List'
       when '6' then 'PLSQL/besoin/List'
       when '7' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.lo