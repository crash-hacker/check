CREATE USER intro_user IDENTIFIED BY mypassword;

GRANT CONNECT TO intro_user;
GRANT CREATE SESSION ,GRANT ANY PRIVALAGE TO intro_user;
GRANT UNLIMITED TABLESPACE TO intro_user;
GRANT CREATE TABLE TO intro_user; 