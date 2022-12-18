PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT
PROMPT   "-------------------------------DANS CETTE SECTION VOUS PORREZ GERER TOUT CE QUI A TRAIT A VOS PUBLICATION-------------------------------"

rompt Please make a selection:
prompt 1: Nouvelle publication
prompt 2: Consulter mes publication
prompt 3: Modifier une publication
prompt 4: Annuler une puublication
prompt 5: Consulter les publication
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

@&v_script.lo