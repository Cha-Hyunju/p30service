drop table dept2 purge;

create table dept2(
dcode varchar2(6) primary key,
dname varchar2(30) not null,
pdept varchar2(6),
area varchar2(30));

INSERT INTO DEPT2 VALUES ('0001','President','','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1000','Management Support Team','0001','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1001','Financial Management Team','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1002','General affairs','1000','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1003','Engineering division','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1004','H/W Support Team','1003','Daejeon Branch Office');
INSERT INTO DEPT2 VALUES ('1005','S/W Support Team','1003','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1006','Business Department','0001','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1007','Business Planning Team','1006','Pohang Main Office');
INSERT INTO DEPT2 VALUES ('1008','Sales1 Team','1007','Busan Branch Office');
INSERT INTO DEPT2 VALUES ('1009','Sales2 Team','1007','Kyunggi Branch Office');
INSERT INTO DEPT2 VALUES ('1010','Sales3 Team','1007','Seoul Branch Office');
INSERT INTO DEPT2 VALUES ('1011','Sales4 Team','1007','Ulsan Branch Office');

drop table emp2 purge;

create table emp2(
empno number primary key,
name varchar2(30) not null,
birthday date,
deptno varchar2(6) not null,
emp_type varchar2(30),
tel varchar2(15),
hobby varchar2(30),
pay number,
position varchar2(30),
pempno number);

INSERT INTO EMP2 VALUES (19900101,'Kurt Russell',TO_DATE('19640125','YYYYMMDD'),'0001','Permanent employee','054)223-0001','music',100000000,'Boss',null);
INSERT INTO EMP2 VALUES (19960101,'AL Pacino',TO_DATE('19730322','YYYYMMDD'),'1000','Permanent employee','02)6255-8000','reading',72000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19970201,'Woody Harrelson',TO_DATE('19750415','YYYYMMDD'),'1000','Permanent employee','02)6255-8005','Fitness',50000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19930331,'Tommy Lee Jones',TO_DATE('19760525','YYYYMMDD'),'1001','Perment employee','02)6255-8010','bike',60000000,'Deputy department head',19960101);
INSERT INTO EMP2 VALUES (19950303,'Gene Hackman',TO_DATE('19730615','YYYYMMDD'),'1002','Perment employee','02)6255-8020','Marathon',56000000,'Section head',19960101);
INSERT INTO EMP2 VALUES (19966102,'Kevin Bacon',TO_DATE('19720705','YYYYMMDD'),'1003','Perment employee','052)223-4000','Music',75000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19930402,'Hugh Grant',TO_DATE('19720815','YYYYMMDD'),'1004','Perment employee','042)998-7005','Climb',51000000,'Section head',19966102);
INSERT INTO EMP2 VALUES (19960303,'Keanu Reeves',TO_DATE('19710925','YYYYMMDD'),'1005','Perment employee','031)564-3340','Climb',35000000,'Deputy Section chief',19966102);
INSERT INTO EMP2 VALUES (19970112,'Val Kilmer',TO_DATE('19761105','YYYYMMDD'),'1006','Perment employee','054)223-4500','Swim',68000000,'Department head',19900101);
INSERT INTO EMP2 VALUES (19960212,'Chris O''Donnell',TO_DATE('19721215','YYYYMMDD'),'1007','Perment employee','054)223-4600',null,49000000,'Section head',19970112);
INSERT INTO EMP2 VALUES (20000101,'Jack Nicholson',TO_DATE('19850125','YYYYMMDD'),'1008','Contracted Worker','051)123-4567','Climb', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000102,'Denzel Washington',TO_DATE('19830322','YYYYMMDD'),'1009','Contracted Worker','031)234-5678','Fishing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000203,'Richard Gere',TO_DATE('19820415','YYYYMMDD'),'1010','Contracted Worker','02)2345-6789','Baduk', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000334,'Kevin Costner',TO_DATE('19810525','YYYYMMDD'),'1011','Contracted Worker','053)456-7890','Singing', 30000000,'',19960212);
INSERT INTO EMP2 VALUES (20000305,'JohnTravolta',TO_DATE('19800615','YYYYMMDD'),'1008','Probation','051)567-8901','Reading book', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20006106,'Robert De Niro',TO_DATE('19800705','YYYYMMDD'),'1009','Probation','031)678-9012','Driking',   22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000407,'Sly Stallone',TO_DATE('19800815','YYYYMMDD'),'1010','Probation','02)2789-0123','Computer game', 22000000,'',19960212);
INSERT INTO EMP2 VALUES (20000308,'Tom Cruise',TO_DATE('19800925','YYYYMMDD'),'1011','Intern','053)890-1234','Golf', 20000000,'',19960212);
INSERT INTO EMP2 VALUES (20000119,'Harrison Ford',TO_DATE('19801105','YYYYMMDD'),'1004','Intern','042)901-2345','Drinking',   20000000,'',19930402);
INSERT INTO EMP2 VALUES (20000210,'Clint Eastwood',TO_DATE('19801215','YYYYMMDD'),'1005','Intern','031)345-3456','Reading book', 20000000,'',19960303);

commit;
