-- set verify off 

-- grant create session, 
--       create table, 
--       create sequence, 
--       create procedure,
--       create user
--   to ja
--   identified by "&ja_password";
  
-- alter user ja default tablespace &tbs
--               quota unlimited on &tbs;

-- alter user ja temporary tablespace &ttbs;


SET ECHO OFF
SET VERIFY OFF
alter session set container=xepdb1;


SELECT tablespace_name FROM dba_tablespaces;

PROMPT *********************ALLOCATION DE ESPACE MEMOIRE *******************************
rem On crée l espaces mémoire tablespace 
CREATE tablespace tf_tabspace
  datafile 'tf_tablespace.dat'
  size 10M autoextend ON;

rem On crée un temporary
CREATE temporary tablespace tf_tabspace_temp
    tempfile 'tf_tablespace_temp.dat'
    size 5M autoextend ON;

PROMPT ********************* RAFRAICHISSEMENT ******************************************
DROP USER tf CASCADE;


CREATE USER tf 
    IDENTIFIED BY tf 
    DEFAULT TABLESPACE tf_tabspace
    TEMPORARY TABLESPACE tf_tabspace_temp;


PROMPT ********************* ACCORD DES DROITS *******************************************
rem Authorisation des privileges accordés a la table gi 
GRANT CREATE SESSION TO tf;
GRANT CREATE VIEW, ALTER SESSION, CREATE SEQUENCE TO tf;
GRANT CREATE TABLE TO tf;
GRANT UNLIMITED TABLESPACE TO tf;
GRANT CREATE SYNONYM, CREATE DATABASE LINK TO tf;
GRANT RESOURCE TO tf;


CONNECT sys/gi@//localhost:1521/xepdb1 AS SYSDBA;

rem Attribution des droits d execution de du schema gi
GRANT execute ON sys.dbms_stats TO gi;

PROMPT ********************CONNECTION AU SCHEMA *****************************************
rem Connection au schema gi 
CONNECT gi/gi@//localhost:1521/xepdb1