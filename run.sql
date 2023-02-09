SET VERIFY OFF
ALTER SESSION SET NLS_LANGUAGE=French;
ALTER session set NLS_DATE_FORMAT='DD/MM/YYYY';
set linesize 3000
spool install.log
@@OBJECTS/run
@@DATA/run

set linesize 300
@@PLSQL/start

spool off
