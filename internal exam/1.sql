create database Lib;
use Lib;
create table Library (
B_No int,
B_name varchar(20),
Author varchar(20));

insert into Library values(1,"A","A1");
insert into Library values(2,"B","B1");
insert into Library values(3,"B","C1");

create table Library_Audit (
B_No int,
B_name varchar(20),
Author varchar(20));

update Library 
set author="X"
where B_No=2;

delete from Library
where B_No=2;

select * from Library_Audit;

/*Trigger
CREATE DEFINER=`root`@`localhost` TRIGGER `lib`.`library_BEFORE_DELETE` BEFORE DELETE ON `library` FOR EACH ROW
BEGIN
	insert into Library_Audit values(old.B_No,old.B_name,old.Author);
END

CREATE DEFINER=`root`@`localhost` TRIGGER `lib`.`library_BEFORE_UPDATE` BEFORE UPDATE ON `library` FOR EACH ROW
BEGIN
	insert into Library_Audit values(old.B_No,old.B_name,old.Author);
END */