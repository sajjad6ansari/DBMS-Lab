-- Inserting data into the 'student' table
INSERT INTO student (rollNo, name, degree, year, sex, deptNo, advisor)
VALUES
    (1, 'Parag Roy', 'B.E.', 3, 'M', 1, 'CS005'),
    (2, 'Rituparna Kashyap', 'B.E.', 3, 'M', 1, 'CS005'),
    (3, 'Neha', 'B.E.', 3, 'F', 1, 'CS005'),
    (4, 'Raman', 'B.E.', 4, 'M', 2, 'EC004'),
    (5, 'Surja Sanyal', 'M.E.', 2, 'M', 1, 'CS005'),
    (6, 'Susahant Satyam', 'M.E.', 1, 'M', 2, 'EC004'),
    (7, 'Kamalika Samanta', 'M.E.', 1, 'F', 1, 'CS005'),
    (8, 'Aparajita', 'B.E.', 2, 'F', 2, 'EC004'),
    (9, 'Sirajul Islam', 'M.E.', 2, 'M', 2, 'EC004'),
    (10, 'Manisha Chaudhury', 'M.E.', 2, 'F', 2, 'EC004');

-- Inserting data into the 'department' table
INSERT INTO department (deptId, name, hod, phone)
VALUES
    (1, 'C.S.E', 'CS006', '2558777'),
    (2, 'E.C.E', 'EC004', '2558776');

-- Inserting data into the 'professor' table
INSERT INTO professor (empId, name, sex, startYear, deptNo, phone)
VALUES
    ('CS001', 'Dr.Biplab Sarkar', 'M', 1982, 1, '9434122345'),
    ('CS002', 'Dr.Souvik Bhattarcharya', 'M', 2000, 1, '9345134677'),
    ('CS003', 'Mr.Sanjoy Pratihar', 'M', 2003, 1, '9332657342'),
    ('CS004', 'Mrs.Kasturi Dikpati', 'F', 2003, 1, '9414321908'),
    ('CS005', 'Mr.Biswanath Pal', 'M', 2004, 1, '9454123876'),
    ('EC001', 'Dr.B.C.Sarkar', 'M', 1986, 2, '9456128867'),
    ('EC002', 'Mrs.Smita Hazra', 'F', 2002, 2, '9465123417'),
    ('EC003', 'Mr.Somnath pal', 'M', 2005, 2, '9435129078'),
    ('CS006', 'Mr.Sripati Mukherjee', 'M', 1977, 1, '9435675489'),
    ('EC004', 'Mr.Bivas Paramanik', 'M', 2002, 2, '9453215789');

-- Inserting data into the 'course' table
INSERT INTO course (courseId, cname, credits, deptNo)
VALUES
    ('UCS001', 'UG(CSE)', 2, 1),
    ('PCS001', 'PG(CSE)', 4, 1),
    ('UEC001', 'UG(ECE)', 2, 2),
    ('PEC001', 'PG(ECE)', 4, 2);

-- Inserting data into the 'enrollment' table
INSERT INTO enrollment (rollNo, courseId, sem, year, grade)
VALUES
    (1, 'UCS001', '6', 3, 'A'),
    (2, 'UCS001', '6', 3, 'B'),
    (3, 'UCS001', '6', 3, 'A+'),
    (4, 'UEC001', '8', 4, 'A'),
    (5, 'PCS001', '4', 2, 'A+'),
    (6, 'PEC001', '2', 1, 'A+'),
    (7, 'PCS001', '2', 1, 'A++'),
    (8, 'UEC001', '4', 2, 'B++'),
    (9, 'PEC001', '4', 2, 'A'),
    (10, 'PEC001', '4', 2, 'B++');

-- Inserting data into the 'teaching' table
INSERT INTO teaching (empId, courseId, sem, year, classRoom)
VALUES
    ('CS001', 'PCS001', '2', 1, 'PC-1'),
    ('CS001', 'PCS001', '4', 2, 'PC-2'),
    ('CS002', 'PCS001', '2', 1, 'PC-1'),
    ('CS003', 'UCS001', '6', 3, 'UC-1'),
    ('CS004', 'UCS001', '6', 3, 'UC-1'),
    ('CS005', 'PCS001', '2', 1, 'PC-1'),
    ('CS005', 'UCS001', '6', 3, 'UC-1'),
    ('EC001', 'UEC001', '4', 2, 'UE-1'),
    ('EC002', 'UEC001', '4', 2, 'UE-1'),
    ('EC003', 'PEC001', '4', 2, 'PE-1'),
    ('EC003', 'UEC001', '6', 3, 'UE-1');

-- Inserting data into the 'preRequisite' table
INSERT INTO preRequisite (preReqCourse, courseId)
VALUES
    ('H.S', 'UCS001'),
    ('B.E.', 'PCS001'),
    ('H.S', 'UEC001'),
    ('B.E.', 'PEC001');
