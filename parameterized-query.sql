-- display count of students
select count(*), count(majorid), max(sat), min(sat), avg(gpa)
	from student;


/*
-- display student name and major
select s.firstname, s.lastname, s.GPA, s.SAT, isnull(m.description, 'Undeclared') as 'Major'
	from student s
	 left join Major m
		on s.majorid = m.id
*/	

DECLARE @LOWSAT int;
DECLARE @HIGHSAT int;

SET @LOWSAT = 900;
SET @HIGHSAT = 1600;

select avg(SAT)
	from student
	where sat <= @LOWSAT or sat >= @HIGHSAT

--display students where gpa >= 3.00


DECLARE @targetGPA decimal(4,2)

SET @targetGPA = 2.70

select *
	from student
	where GPA >= @targetGPA 

/*
select s.firstname, s.lastname, s.gpa
from student s
where s.SAT >= 1000  and s.sat <= 1300

select *
from student s
where s.sat < 1000 or s.sat > 1400
*/
