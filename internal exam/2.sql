create database emp;
use emp;
create table employee (
	empno int,
	ename varchar(20),
	job varchar(20),
	mgr varchar(20),
	hiredate varchar(20),
	sal double,
	commission double,
	deptno int);
create table department(
	deptno int,
	dname varchar(20),
	loc varchar(20));
    insert into department values(10,"MCA","TVM");
    insert into department values(20,"MTECH","Kollam");
    insert into department values(30,"BTECH","TVM");
    insert into department values(40,"BSC","TCR");
    insert into department values(50,"MSC","Kochi");
    delete from employee ;
    delete from department ;
    insert into employee values(10,"Lara","clerk","Mithun","10/10/1998",45000,5000,10);
    insert into employee values(11,"Lama","Sweeper","Mathew","10/10/1200",5000,50,30);
    insert into employee values(12,"Soni","clerk","Mathew","10/10/1998",32000,5000,30);
    insert into employee values(13,"Jesh","clerk","Mathew","10/10/1998",56000,5000,30);
    insert into employee values(14,"Manu","Driver","Moni","10/10/1988",85000,500,10);
    select * from employee;
    select * from department;
    
    /*1*/
    select count(*) 
		from employee 
    where job="clerk";
    
    /*2*/
    select d.dname,count(e.job) 
		from employee e join department d on e.deptno=d.deptno
    where job="clerk" 
    group by d.deptno 
		having count(empno)=1 ;
    
    /*3*/
	select d.dname,count(*) 
		from employee e join department d on e.deptno=d.deptno
    group by d.deptno;
    
    /*4*/
	select d.dname,avg(sal) 
		from employee e join department d on e.deptno=d.deptno
    group by d.deptno 
    order by avg(sal)
    limit 1;
    
    /*5*/
    select ename 
    from employee 
		where ename like "La%";
    
    /*6*/
    select * 
    from employee 
		where deptno=10 
			and sal>=(
				select max(sal) 
				from employee 
				where deptno=30 );
    