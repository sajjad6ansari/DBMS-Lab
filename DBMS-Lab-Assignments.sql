-- 1. Show the roll no and name of the students who read B.E.
SELECT s.rollNo, s.name 
FROM student s
WHERE s.degree = 'B.E.';

-- 2. Show the roll no and name of the students who read M.E.
SELECT s.rollNo, s.name 
FROM student s
WHERE s.degree = 'M.E.';

-- 3. Show the roll no and name of the male students.
SELECT s.rollNo, s.name 
FROM student s
WHERE s.sex = 'M';

-- 4. Show the roll no and name of the female students.
SELECT s.rollNo, s.name 
FROM student s
WHERE s.sex = 'F';

-- 5. Show the department id and phone no of Computer Sc & Engg. Dept.
SELECT d.deptId, d.phone 
FROM department d
WHERE d.name = 'C.S.E.'; 

-- 6. Show the Emp id, name, sex and phone no of the professors who joind before 2000.
SELECT p.empId, p.name, p.sex, p.phone 
FROM professor p
WHERE p.startYear < 2000;

-- 7. Show the name and phone nof of the fhe male professors.
SELECT p.name, p.phone 
FROM professor p
WHERE p.sex = 'M';

-- 8. Show the roll no, course id and grade of top graded students.
SELECT e.rollNo, e.courseId, e.grade
FROM enrollment e
WHERE e.grade = 'A++';

-- 9. Show the roll no and course id of the first year students.
SELECT e.rollNo, e.courseId
FROM enrollment e
INNER JOIN student s ON e.rollNo = s.rollNo
WHERE s.year = 1;

-- 10. Show the roll no and course id of the other than 1st year students.
SELECT e.rollNo, e.courseId
FROM enrollment e
INNER JOIN student s ON e.rollNo = s.rollNo
WHERE s.year > 1;

-- 11. Show the credit point of under graduate C.S.E course.
SELECT c.credits
FROM course c
INNER JOIN department d ON c.deptNo = d.deptId
WHERE d.name = 'C.S.E.' 
  AND c.degree = 'B.E.';

-- 12. Show the course name whose credit points are 4.
SELECT c.cname
FROM course c
WHERE c.credits

-- 13. Show the start year and phone no of the female professors.
SELECT p.startYear, p.phone
FROM professor p
WHERE p.sex = 'F';

-- 14. Show the roll no and course id of the students who have below B grade.
SELECT e.rollNo, e.courseId
FROM enrollment e
WHERE e.grade < 'B';

-- 15. Show the Roll no, year and degree of the student whose name is Aparajita.
SELECT s.rollNo, s.year, s.degree
FROM student s
WHERE s.name = 'Aparajita';



-- Assignment 2

-- 16. Display the roll no and name of the students from C.S.E department.
SELECT s.rollNo, s.name
FROM student s
INNER JOIN department d ON s.deptNo = d.deptId
WHERE d.name = 'C.S.E';

-- 17. Display the roll no, name and year of the male students from E.C.E department.
SELECT s.rollNo, s.name, s.year
FROM student s
INNER JOIN department d ON s.deptNo = d.deptId
WHERE s.sex = 'M' AND d.name = 'E.C.E';

-- 18. Display the rollno, name, degree of the students whoose advisor is Mr.Biswanath Pal.
SELECT s.rollNo, s.name, s.degree
FROM student s
INNER JOIN professor p ON s.advisor = p.empId
WHERE p.name = 'Mr.Biswanath Pal';

-- 19. Display the rollno.name of the M.E female students’ whoose advisor is Mr.Bivas Paramanik.
SELECT s.rollNo, s.name
FROM student s
INNER JOIN professor p ON s.advisor = p.empId
WHERE s.degree = 'M.E.' AND s.sex = 'F' AND p.name = 'Mr.Bivas Paramanik';

-- 20. Display the name and phone no of HOD of CSE department.
SELECT p.name, p.phone
FROM professor p
INNER JOIN department d ON p.empId = d.hod
WHERE d.name = 'C.S.E';

-- 21. Display the name of female Professors of CSE department.
SELECT p.name
FROM professor p
INNER JOIN department d ON p.deptNo = d.deptId
WHERE d.name = 'C.S.E.' AND p.sex = 'F';

-- 22. Display the empid, name, start year of HOD of ECE department.
SELECT p.empId, p.name, p.startYear
FROM professor p
INNER JOIN department d ON p.empId = d.hod
WHERE d.name = 'E.C.E.';

-- 23. Display rollno and name of 2nd year M.E male students from ECE department.
SELECT s.rollNo, s.name
FROM student s
INNER JOIN department d ON s.deptNo = d.deptId
WHERE s.year = 2 AND s.degree = 'M.E.' AND s.sex = 'M' AND d.name = 'E.C.E';

-- 24. Display the name, degree, courseid, sem of the student who has rollno 1.
SELECT s.name, s.degree, e.courseId, e.sem
FROM student s
INNER JOIN enrollment e ON s.rollNo = e.rollNo
WHERE s.rollNo = 1;

-- 25. Display the rollno, name and Degree of post graduate students whoose Grade is A++.
SELECT s.rollNo, s.name, s.degree
FROM student s
INNER JOIN enrollment e ON s.rollNo = e.rollNo
WHERE e.grade = 'A++' AND s.degree = 'M.E.';

-- 26. Display the roll no, Name of students in the CSE department along with their advisor name and his empid.
SELECT s.rollNo, s.name, p.name AS advisor_name, p.empId
FROM student s
INNER JOIN professor p ON s.advisor = p.empId
INNER JOIN department d ON s.deptNo = d.deptId
WHERE d.name = 'C.S.E'; 

-- 27. Display the name, employee ids,phone nos, in CSE department who have joined before 1995.
SELECT p.name, p.empId, p.phone
FROM professor p
INNER JOIN department d ON p.deptNo = d.deptId
WHERE d.name = 'C.S.E.' AND p.startYear < 1995;

-- 28. Display the empid and Name of professors who teaches post graduate in ECE department.
SELECT DISTINCT t.empId, p.name
FROM teaching t
INNER JOIN professor p ON t.empId = p.empId
INNER JOIN course c ON t.courseId = c.courseId
INNER JOIN department d ON c.deptNo = d.deptId
WHERE d.name = 'E.C.E.' AND c.degree = 'M.E.';

-- 29. Display the name and roll no. of the students who read in second sem post graduate in from ECE and grade greater than B++.
SELECT s.name, s.rollNo
FROM student s
INNER JOIN enrollment e ON s.rollNo = e.rollNo
INNER JOIN department d ON s.deptNo = d.deptId
WHERE s.degree = 'M.E.' AND e.sem = '02' AND d.name = 'E.C.E.' AND e.grade > 'B++';

-- 30. Display the names of the professors who teach in undergraduate 6th semester CSE courses.
SELECT DISTINCT p.name
FROM professor p
INNER JOIN teaching t ON p.empId = t.empId
INNER JOIN course c ON t.courseId = c.courseId
INNER JOIN department d ON c.deptNo = d.deptId
WHERE d.name = 'C.S.E.' AND c.degree = 'B.E.' AND t.sem = '06';


-- Assignment 3

-- 1. Get the empid, name of senior most professors.
SELECT p.empId, p.name
FROM professor p
ORDER BY p.startYear ASC
LIMIT 1;

-- 2. Get the rollno, name of the students whose gender is same as their advisor.
SELECT s.rollNo, s.name
FROM student s
INNER JOIN professor p ON s.advisor = p.empId
WHERE s.sex = p.sex;

-- 3. Get the courseid, coursename, sem taught by advisor of C.S.E dept.
SELECT DISTINCT t.courseId, c.cname, t.sem
FROM teaching t
INNER JOIN professor p ON t.empId = p.empId
INNER JOIN course c ON t.courseId = c.courseId
INNER JOIN student s ON p.empId = s.advisor
INNER JOIN department d ON s.deptNo = d.deptId
WHERE d.name = 'C.S.E.';

-- 4. Get the courseid, coursename, sem taught by H.O.D of each dept.
SELECT DISTINCT t.courseId, c.cname, t.sem
FROM teaching t
INNER JOIN professor p ON t.empId = p.empId
INNER JOIN course c ON t.courseId = c.courseId
INNER JOIN department d ON p.empId = d.hod;

-- 5. Get the post graduate male student and course credit point from C.S.E dept .
SELECT s.rollNo, s.name, c.credits
FROM student s
INNER JOIN enrollment e ON s.rollNo = e.rollNo
INNER JOIN course c ON e.courseId = c.courseId
INNER JOIN department d ON s.deptNo = d.deptId
WHERE s.degree = 'M.E.' AND s.sex = 'M' AND d.name = 'C.S.E';

-- 6. Get the courseid, coursename, department name which has at least one female student.
SELECT DISTINCT c.courseId, c.cname, d.name
FROM course c
INNER JOIN department d ON c.deptNo = d.deptId
INNER JOIN enrollment e ON c.courseId = e.courseId
INNER JOIN student s ON e.rollNo = s.rollNo
WHERE s.sex = 'F';

-- 7. Get the courseid, coursename, department name which is not a 6 point course.
SELECT c.courseId, c.cname, d.name
FROM course c
INNER JOIN department d ON c.deptNo = d.deptId
WHERE c.credits != 6;

-- 8. Get the courseid, coursename which has at least one A++ grade student.
SELECT DISTINCT c.courseId, c.cname
FROM course c
INNER JOIN enrollment e ON c.courseId = e.courseId
WHERE e.grade = 'A++';

-- 9. Get the rollno, name of the female student tought by the advisor of CSE dept.
SELECT DISTINCT s.rollNo, s.name
FROM student s
INNER JOIN enrollment e ON s.rollNo = e.rollNo
INNER JOIN teaching t ON e.courseId = t.courseId
INNER JOIN professor p ON t.empId = p.empId
INNER JOIN department d ON s.deptNo = d.deptId
WHERE s.sex = 'F' AND d.name = 'C.S.E';

-- 10. Get the course id, coursename which have any final year student.
SELECT DISTINCT c.courseId, c.cname
FROM course c
INNER JOIN enrollment e ON c.courseId = e.courseId
INNER JOIN student s ON e.rollNo = s.rollNo
WHERE (s.year = 4 AND s.degree = 'B.E.') OR (s.year = 2 AND s.degree = 'M.E.');



-- Assignment 4

-- 1. Find out the max and minimum credit for undergraduate and postgraduate students.
SELECT 
    c.degree, 
    MAX(c.credits) AS max_credits, 
    MIN(c.credits) AS min_credits
FROM course c
GROUP BY c.degree;

-- 2. Find out the name of professors whose empid starts with alphabet ‘C’ and who teaches in undergraduate courses.
SELECT DISTINCT p.name
FROM professor p
INNER JOIN teaching t ON p.empId = t.empId
INNER JOIN course c ON t.courseId = c.courseId
WHERE p.empId LIKE 'C%' AND c.degree = 'B.E.';

-- 3. Find out the maximum tenure of any courses. 
SELECT MAX(c1.credits)
FROM course c1
INNER JOIN preRequisite pr ON c1.courseId = pr.courseId;

-- 4. Display the degree and total number of students enrolled for that course.
SELECT c.degree, COUNT(DISTINCT e.rollNo) AS total_students
FROM course c
INNER JOIN enrollment e ON c.courseId = e.courseId
GROUP BY c.degree;

-- 5. Display the degree and total number of male/female students enrolled for each course.
-- Query 1: Count of male students per degree
SELECT 
    c.degree, 
    COUNT(*) AS male_students
FROM course c
INNER JOIN enrollment e ON c.courseId = e.courseId
INNER JOIN student s ON e.rollNo = s.rollNo
WHERE s.sex = 'M'
GROUP BY c.degree;
-- Query 2: Count of female students per degree
SELECT 
    c.degree, 
    COUNT(*) AS female_students
FROM course c
INNER JOIN enrollment e ON c.courseId = e.courseId
INNER JOIN student s ON e.rollNo = s.rollNo
WHERE s.sex = 'F'
GROUP BY c.degree;

-- 6. Find out the name of the studets who haven’t enrolled for postgraduate curses. (Using except clause).
SELECT s.name
FROM student s
EXCEPT
SELECT s.name
FROM student s
INNER JOIN enrollment e ON s.rollNo = e.rollNo
INNER JOIN course c ON e.courseId = c.courseId
WHERE c.degree = 'M.E.';

-- 7. Find out the name of the professors who teaches both in undergraduate course as well as in the undergraduate course. 
SELECT DISTINCT p.name
FROM professor p
INNER JOIN teaching t1 ON p.empId = t1.empId
INNER JOIN course c1 ON t1.courseId = c1.courseId
INNER JOIN teaching t2 ON p.empId = t2.empId
INNER JOIN course c2 ON t2.courseId = c2.courseId
WHERE c1.degree = 'B.E.' AND c2.degree = 'M.E.';

-- 8. Find out the name of the professors who teaches either in undergraduate course or in the undergraduate course.
SELECT DISTINCT p.name
FROM professor p
INNER JOIN teaching t ON p.empId = t.empId
INNER JOIN course c ON t.courseId = c.courseId
WHERE c.degree = 'B.E.' OR c.degree = 'M.E.';


-- 9. Get the employee id, name of professors who advice at least one female student.
SELECT DISTINCT p.empId, p.name
FROM professor p
INNER JOIN student s ON p.empId = s.advisor
WHERE s.sex = 'F';


-- 10. List the names of the professors who have joined after 2000, in alphabetic order.
SELECT p.name
FROM professor p
WHERE p.startYear > 2000
ORDER BY p.name;
