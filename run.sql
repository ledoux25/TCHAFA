ALTER SESSION SET NLS_LANGUAGE=French;
ALTER session set NLS_DATE_FORMAT='DD/MM/YYYY';
spool install.log
@@OBJECTS/run
@@DATA/run

set linesize 3000
@@PLSQL/start

spool off
