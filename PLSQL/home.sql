rompt Please make a selection:
prompt 1: Mon compte
prompt 2: Recommendation
prompt 3: Besoins
prompt 4: Candidature
prompt 5: Publication
prompt 0: Quitter


accept selection prompt "Enter option 0-5: "

set term off

column script new_value v_script

select case '&selection.'
       when '1' then 'PLSQL/Compte/home.sql'
       when '2' then 'script_b'
       when '3' then 'script_c'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.