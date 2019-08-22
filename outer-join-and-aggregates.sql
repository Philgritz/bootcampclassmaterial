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