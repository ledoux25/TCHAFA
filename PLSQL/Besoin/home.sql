PROMPT '---------------------------------------------------------------------------------------------------------'                                                                                                                           
PROMPT '|                                                                                                       |' 
PROMPT '|                                                                                                       |'
PROMPT '|                   DANS CETTE SECTION VOUS PORREZ GERER TOUT CE QUI A TRAIT A VOS RECOMMENDATION       |'
PROMPT '|                                                                                                       |'
PROMPT '|                   ********************************************************************                |'               
Prompt '|                   *               make a selection:                                  *                |'
prompt '|                   *               1: Liste des besoins                               *                |'
prompt '|                   *               2: Ajouter un besoin                               *                |'
prompt '|                   *               3: Modifier un besoin                              *                |'
prompt '|                   *               4: Suprimer un besoin                              *                |'
prompt '|                   *               5: Publier un besion                               *                |'
prompt '|                   *               6: Precedent                                       *                |'
prompt '|                   *               0: Quitter                                         *                |'
PROMPT '|                   ********************************************************************                |'
PROMPT '|                                                                                                       |'
PROMPT '|                                                                                                       |'
PROMPT '|--------------------------------------------------------------------------------------------------------'
accept selection prompt "Enter option 0-6: "


set term off
set serveroutput on
column script new_value v_script

select case '&selection.'
       when '1' then 'FEATURES/besoin/Select.sql'
       when '2' then 'FEATURES/besoin/New.sql'
       when '3' then 'FEATURES/besoin/Mod.sql'
       when '4' then 'FEATURES/besoin/Del.sql'
       when '5' then 'FEATURES/publication/New.sql'
       when '6' then 'PLSQL/home.sql'
       when '0' then 'PLSQL/exit.sql'
       else 'menu'
       end as script
from dual;

set term on

@&v_script.