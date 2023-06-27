create table dept01 (
deptno number(38) primary key,
dname varchar2(50),
LOC varchar2(20)
);

desc dept01;
describe dept01;

alter table dept01 modify (dname varchar2(30));

insert into dept01 values(50, '총무부', '서울');

select * from dept01;

update dept01 set dname='총무부', LOC='부산' where deptno=50;

delete from dept01 where deptno=50;

rename dept01 to dept02;

insert into dept02 values(10, '개발부', '판교');

TRUNCATE table dept02;

select sysdate as "오늘날짜" from dual;
SELECT 10+10 as "덧셈결과", 10*10 as "곱셈결과값", 10/3 as "나눗셈결과" from dual;

create table emp(
empno int primary key,
ename varchar2(20),
sal number(38),
comm number(38),
deptno number(38)
);

insert into emp values(11,'홍길동', 1000, 100, 10);
insert into emp(empno, ename, sal, deptno) values(12, '이순신', 1500, 20);

select * from emp order by empno desc;

select ename, sal, comm, sal*12+comm as "연봉" from emp;

select ename, sal, nvl(comm,0),sal*12+nvl(comm,0) as " 연봉" from emp;

insert into emp values(13, '신사임당', 2000, 200, 10);
select deptno from emp;
select distinct deptno from emp;

commit;
