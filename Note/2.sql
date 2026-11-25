SELECT * FROM DUAL;--THIS IS DUMMY TABLE

SELECT * FROM DEPT;--DEPT IS NOT AVAILABLE 

create table dept(  
  deptno     number(2,0),  
  dname      varchar2(14),  
  loc        varchar2(13),  
   CONSTRAINT pk_dept primary key (deptno)  
);

create table emp(  
  empno    number(4,0),  
  ename    varchar2(10),  
  job      varchar2(9),  
  mgr      number(4,0),  
  hiredate date,  
  sal      number(7,2),  
  comm     number(7,2),  
  deptno   number(2,0),  
  constraint pk_emp primary key (empno),  
  constraint fk_deptno foreign key (deptno) references dept (deptno)  );
  
  
insert into DEPT (DEPTNO, DNAME, LOC)
values(10, 'ACCOUNTING', 'NEW YORK');

insert into dept  
values(20, 'RESEARCH', 'DALLAS');

insert into dept  
values(30, 'SALES', 'CHICAGO');

insert into dept  
values(40, 'OPERATIONS', 'BOSTON');
-----------------------------------------------


insert into emp  
values(  
 7839, 'KING', 'PRESIDENT', null,  
 to_date('17-11-1981','dd-mm-yyyy'),  
 5000, null, 10  
);
insert into emp  
values(  
 7698, 'BLAKE', 'MANAGER', 7839,  
 to_date('1-5-1981','dd-mm-yyyy'),  
 2850, null, 30  
);


insert into emp  
values(  
 7782, 'CLARK', 'MANAGER', 7839,  
 to_date('9-6-1981','dd-mm-yyyy'),  
 2450, null, 10  
);

insert into emp  
values(  
 7566, 'JONES', 'MANAGER', 7839,  
 to_date('2-4-1981','dd-mm-yyyy'),  
 2975, null, 20  
);
insert into emp  
values(  
 7788, 'SCOTT', 'ANALYST', 7566,  
 to_date('13-JUL-87','dd-mm-rr') - 85,  
 3000, null, 20  
);
insert into emp  
values(  
 7902, 'FORD', 'ANALYST', 7566,  
 to_date('3-12-1981','dd-mm-yyyy'),  
 3000, null, 20  
);



insert into emp  
values(  
 7369, 'SMITH', 'CLERK', 7902,  
 to_date('17-12-1980','dd-mm-yyyy'),  
 800, null, 20  
);

insert into emp  
values(  
 7499, 'ALLEN', 'SALESMAN', 7698,  
 to_date('20-2-1981','dd-mm-yyyy'),  
 1600, 300, 30  
);
insert into emp  
values(  
 7521, 'WARD', 'SALESMAN', 7698,  
 to_date('22-2-1981','dd-mm-yyyy'),  
 1250, 500, 30  
);
insert into emp  
values(  
 7654, 'MARTIN', 'SALESMAN', 7698,  
 to_date('28-9-1981','dd-mm-yyyy'),  
 1250, 1400, 30  
);



insert into emp  
values(  
 7844, 'TURNER', 'SALESMAN', 7698,  
 to_date('8-9-1981','dd-mm-yyyy'),  
 1500, 0, 30  
);

insert into emp  
values(  
 7876, 'ADAMS', 'CLERK', 7788,  
 to_date('13-JUL-87', 'dd-mm-rr') - 51,  
 1100, null, 20  
);
insert into emp  
values(  
 7900, 'JAMES', 'CLERK', 7698,  
 to_date('3-12-1981','dd-mm-yyyy'),  
 950, null, 30  
);
insert into emp  
values(  
 7934, 'MILLER', 'CLERK', 7782,  
 to_date('23-1-1982','dd-mm-yyyy'),  
 1300, null, 10  
);

create table salgrade(   grade number,   losal number,   hisal number );

 insert into salgrade values (1, 700, 1200);
 insert into salgrade values (2, 1201, 1400); 
 insert into salgrade values (3, 1401, 2000); 
 insert into salgrade values (4, 2001, 3000); 
 insert into salgrade values (5, 3001, 9999);

COMMIT;



SELECT * FROM DEPT; --THIS TABLE STORES DEPARTMENT INFORMATION
SELECT * FROM EMP; --THIS TABLE STORES EMPLOYEE INFORMATION
SELECT * FROM SALGRADE; --THIS TABLE STORES EMPLOYEE GRADE INFORMATION

DICTIONARY TABLE
===================
DICTIONARY TABLE IS TABLE WHICH TRACKS 
THE OBJECT INFORMATION.

THERE ARE SEVERAL TYPES OF DICTIONARY TABLES
ARE AVAILABLE .

1. USER_TABLES:-
================
THIS DICTIONARY TABLE TRACKS , HOW MANY TABLES WE HAVE
CREATED SO FAR.

SELECT * FROM USER_TABLES; 

SELECT * FROM USER_TAB_COLS; --THIS DICT. TABLE STORES TABLE NAME ALONG WITH COL , DATA TYPE

SELECT * FROM USER_OBJECTS;--THIS DICT. TABLE STORES OBJECT_NAME ALONG WITH CREATED DATE AND TIME

SELECT * FROM ALL_TABLES;--THIS TABLE STORES ALL USER TABLE INFO.


SELECT * FROM EMP;

SELECT  EMPNO, SAL FROM EMP;

SELECT  EMPNO, sal FROM EMP;

NOTE:- COL HEADER ALWAYS DISPLAY IN CAPITAL LETTER

SELECT  EMPNO, SAL , SAL , SAL FROM EMP;

WHERE CONDITION
===================
1.WHEN WE WANT TO SEE PARTICULAR RECORD FROM A TABLE THAT TIME WE CAN USE
WHERE CONDTITION.
2. WHERE CONDTION SHOULD BE PLACED AFTER TABLE NAME.


SELECT * FROM EMP WHERE ENAME = 'KING';

SELECT * FROM EMP WHERE ENAME = 'scott';

NOTE :- DATA IS CASE SENSITIVE

SELECT * FROM EMP WHERE ENAME = 'SCOTT';

SELECT * FROM EMP WHERE  'SCOTT' = ENAME;


CR:- CHANGE REQUEST / USER STORY
CR IS GENERATED ON MONTHLY BASIS 
SPRINT - TOTAL CR

CR-1 DISPLAY EMP INFORMATION WHO ARE WORKING IN DEPTNO 10 ?

SELECT * FROM EMP WHERE DEPTNO = 10;

EXPORT DATA:-
============
RIGHT CLICK ON OUTPUT -> EXPORT- CHOOSE EXCEL -> SAVE THE FILE
->NEXT->FINISH

CR-2 GIVE ME EMPNO , ENAME, SAL IN A PDF FORMAT?

SELECT EMPNO, ENAME, SAL FROM EMP;

SELECT * FROM EMP WHERE 1 = 1; --TRUE CONDITION

SELECT * FROM EMP WHERE 1 = 2;-- FALSE CONDITION

Q:- DISPLAY EMP INFORMATION WHOSE SAL AND COMM ARE SAME ?

SELECT * FROM EMP WHERE SAL = COMM;

SELECT * FROM EMP WHERE HIREDATE = '03-DEC-81';

SELECT * FROM EMP WHERE SAL = 3000;

SELECT * FROM EMP WHERE COMM IS  NULL;
