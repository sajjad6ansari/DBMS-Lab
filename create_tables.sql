-- Create table: department
CREATE TABLE department (
    deptId NUMBER PRIMARY KEY,
    name VARCHAR2(6) NOT NULL,
    hod VARCHAR2(5),
    phone VARCHAR2(10)
);

-- Create table: student
CREATE TABLE student (
    rollNo NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    degree VARCHAR2(4),
    year NUMBER,
    sex CHAR(1),
    deptNo NUMBER,
    advisor VARCHAR2(5)
);

-- Create table: professor
CREATE TABLE professor (
    empId NUMBER PRIMARY KEY,
    name VARCHAR2(100) NOT NULL,
    sex CHAR(1),
    startYear NUMBER,
    deptNo NUMBER REFERENCES department(deptId),
    phone VARCHAR2(10)
);

-- Create table: course
CREATE TABLE course (
    courseId NUMBER PRIMARY KEY,
    cname VARCHAR2(10) NOT NULL,
    credits NUMBER,
    deptNo NUMBER REFERENCES department(deptId)
);

-- Create table: enrollment
CREATE TABLE enrollment (
    rollNo NUMBER REFERENCES student(rollNo),
    courseId NUMBER REFERENCES course(courseId),
    sem VARCHAR2(2),
    year NUMBER,
    grade CHAR(2),
    PRIMARY KEY (rollNo, courseId, sem, year)
);

-- Create table: teaching
CREATE TABLE teaching (
    empId NUMBER REFERENCES professor(empId),
    courseId NUMBER REFERENCES course(courseId),
    sem VARCHAR2(2),
    year NUMBER,
    classRoom VARCHAR2(5),
    PRIMARY KEY (empId, courseId, sem, year)
);

-- Create table: preRequisite
CREATE TABLE preRequisite (
    preReqCourse NUMBER REFERENCES course(courseId),
    courseID NUMBER REFERENCES course(courseId),
    PRIMARY KEY (preReqCourse, courseID)
);

-- Add FOREIGN KEY constraint to student.advisor referencing professor.empId
ALTER TABLE student
ADD CONSTRAINT fk_student_advisor FOREIGN KEY (advisor) REFERENCES professor(empId);

-- Add FOREIGN KEY constraint to student.deptNo referencing department.deptId
ALTER TABLE student
ADD CONSTRAINT fk_student_dept FOREIGN KEY (deptNo) REFERENCES department(deptId);

-- Add a foreign key constraint to ensure that the HOD in the department table references a valid professor
ALTER TABLE department
ADD CONSTRAINT fk_hod_professor
FOREIGN KEY (hod) REFERENCES professor(empId);
