PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT   "-------------------------------DANS CETTE SECTION VOUS PORREZ GERER TOUT CE QUI A TRAIT A VOS RECOMMENDATION "

rompt Please make a selection:
prompt 1: Liste de besoins
prompt 2: Ajouter un besoin
prompt 3: Modifier un besoin
prompt 4: Suprimer un besoin
prompt 5: Publier un besion
prompt 6: Precedent
prompt 0: Quitter
accept selection prompt "Enter option 0-6: "

set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then ''
       when '2' then ''
       when '3' then ''
       when '4' then ''
       when '5' then ''
       when '6' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.