
--- Table-DEPT 


CREATE TABLE DEPT (
  DEPTNO NUMBER(2)   Primary Key,
  DEPTNAME VARCHAR2(14)
  
);

INSERT INTO dept VALUES (10,'Accounting');    
INSERT INTO dept values (20,'Research');
INSERT INTO dept values ( 30,'Sales' );         
INSERT INTO dept values (40,'Operations');





---EMP
CREATE TABLE EMP (
  EMPNO NUMBER(4)   Primary Key,
  EMPNAME VARCHAR2(10),
  CITY  VARCHAR2(20),
  SAL	NUMBER(7,2)  check(SAL>10000),  
  DEPTNO	NUMBER(2)  references DEPT(DEPTNO)
);


INSERT INTO emp VALUES (7369,'SMITH', 'NEW YORK',18000,20);
INSERT INTO emp VALUES (7499,'ALLEN', 'CHICAGO',16000,30); 
INSERT INTO emp VALUES (7521,'WARD', 'DALLAS',12500,30);
INSERT INTO emp VALUES (7566,'JONES', 'NEW YORK',29750,20);
INSERT INTO emp VALUES (7654,'MARTIN', 'DALLAS',14000,30);
INSERT INTO emp VALUES (7698,'BLAKE', 'CHICAGO',28500,30);
INSERT INTO emp VALUES (7782,'CLARK', 'NEW YORK',24500,10);
INSERT INTO emp VALUES (7788,'SCOTT', 'CHICAGO',30000,20);
INSERT INTO emp VALUES (7839,'KING', 'BOSTON',50000,10);
INSERT INTO emp VALUES (7844,'TURNER', 'CHICAGO',15000,30);
INSERT INTO emp VALUES (7876,'ADAMS', 'NEW YORK',11000,20);
INSERT INTO emp VALUES (7900,'JAMES', 'DALLAS', 19500,30);
INSERT INTO emp VALUES (7902,'FORD', 'DALLAS', 30000,20);
INSERT INTO emp VALUES (7934,'MILLER', 'NEW YORK', 13000,10);



---  QUER 1 
 select city
 from emp
 where  DEPTNO  = ( select DEPTNO
    from dept
    where  DEPTNAME = 'Research')

--SAME 1 ANOTHER WAY
select E.CITY 
from DEPT D 
JOIN EMP E ON  D. DEPTNO =E.DEPTNO 
WHERE D. DEPTNAME='Research'


------Q2 

SELECT    D.DEPTNAME, COUNT(E.EMPNO) NO_OF_EMPLOYE  
FROM EMP E
FULL JOIN DEPT D ON  E.DEPTNO =D.DEPTNO 
GROUP BY  D. DEPTNAME



SELECT *
FROM emp