set verify off 

grant create session, 
      create table, 
      create sequence, 
      create procedure,
      create user
  to ja
  identified by "&ja_password";
  
alter user ja default tablespace &tbs
              quota unlimited on &tbs;

alter user ja temporary tablespace &ttbs;