ALTER SESSION SET NLS_LANGUAGE=French;
ALTER session set NLS_DATE_FORMAT='DD/MM/YYYY';
spool install.log
@@OBJECTS/run
@@DATA/run

PROMPT "-----------------------------------------------------MADE BY-----------------------------------------"
PROMPT "-----------------------------------------------------SANGUO-----------------------------------------"
PROMPT "-----------------------------------------------------TOKO-------------------------------------------"
PROMPT "-----------------------------------------------------CHIEMO-----------------------------------------"
PROMPT "-----------------------------------------------------KANTEU-----------------------------------------"
PROMPT "-----------------------------------------------------MALONJU-----------------------------------------"
spool off
