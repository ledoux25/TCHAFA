-- alter session set container=xepdb1;
-- define ja_password = co
-- define connect_string = //localhost:1521/xepdb1
-- define tbs = users
-- define ttbs = temp

-- PROMPT deleting user
-- @@drop_user
-- PROMPT creating user
-- @@users &ja_password &tbs &ttbs
-- conn co/&ja_password@&connect_string AS SYSDBA;

@@drop_user 
@@users

