# University Database Schema 

## Overview
This document describes the relational schema for a university database. The schema includes six tables: `student`, `department`, `professor`, `course`, `enrollment`, `teaching`, and `preRequisite`. These tables are designed to model the relationships among students, professors, courses, and departments in a university setting.

---

## Tables and Relationships

### 1. **Student Table**
| Column    | Data Type     | Constraints                           |
|-----------|---------------|---------------------------------------|
| rollNo    | NUMBER        | PRIMARY KEY                          |
| name      | VARCHAR2(100) | NOT NULL                             |
| degree    | VARCHAR2(100) |                                       |
| year      | NUMBER        |                                       |
| sex       | CHAR(1)       |                                       |
| deptNo    | NUMBER        | FOREIGN KEY REFERENCES department(deptId) |
| advisor   | NUMBER        | FOREIGN KEY REFERENCES professor(empId) |

**Description**:
- Each student is uniquely identified by `rollNo`.
- Students are linked to a department via `deptNo`.
- An advisor (professor) is assigned to each student via `advisor`.

---

### 2. **Department Table**
| Column    | Data Type     | Constraints   |
|-----------|---------------|---------------|
| deptId    | NUMBER        | PRIMARY KEY  |
| name      | VARCHAR2(100) | NOT NULL     |
| hod       | VARCHAR2(100) |              |
| phone     | VARCHAR2(15)  |              |

**Description**:
- Departments are uniquely identified by `deptId`.
- Each department has a name, a head of department (HOD), and a contact phone number.

---

### 3. **Professor Table**
| Column    | Data Type     | Constraints                           |
|-----------|---------------|---------------------------------------|
| empId     | NUMBER        | PRIMARY KEY                          |
| name      | VARCHAR2(100) | NOT NULL                             |
| sex       | CHAR(1)       |                                       |
| startYear | NUMBER        |                                       |
| deptNo    | NUMBER        | FOREIGN KEY REFERENCES department(deptId) |
| phone     | VARCHAR2(15)  |                                       |

**Description**:
- Professors are uniquely identified by `empId`.
- Each professor belongs to a department via `deptNo`.

---

### 4. **Course Table**
| Column    | Data Type     | Constraints                           |
|-----------|---------------|---------------------------------------|
| courseId  | NUMBER        | PRIMARY KEY                          |
| cname     | VARCHAR2(100) | NOT NULL                             |
| credits   | NUMBER        |                                       |
| deptNo    | NUMBER        | FOREIGN KEY REFERENCES department(deptId) |

**Description**:
- Courses are uniquely identified by `courseId`.
- Each course is associated with a department via `deptNo`.

---

### 5. **Enrollment Table**
| Column    | Data Type     | Constraints                           |
|-----------|---------------|---------------------------------------|
| rollNo    | NUMBER        | FOREIGN KEY REFERENCES student(rollNo) |
| courseId  | NUMBER        | FOREIGN KEY REFERENCES course(courseId) |
| sem       | VARCHAR2(10)  | PRIMARY KEY PART OF COMPOSITE KEY    |
| year      | NUMBER        | PRIMARY KEY PART OF COMPOSITE KEY    |
| grade     | CHAR(2)       |                                       |

**Description**:
- Represents the enrollment of students in courses.
- A composite primary key (`rollNo`, `courseId`, `sem`, `year`) ensures unique enrollments.

---

### 6. **Teaching Table**
| Column    | Data Type     | Constraints                           |
|-----------|---------------|---------------------------------------|
| empId     | NUMBER        | FOREIGN KEY REFERENCES professor(empId) |
| courseId  | NUMBER        | FOREIGN KEY REFERENCES course(courseId) |
| sem       | VARCHAR2(10)  | PRIMARY KEY PART OF COMPOSITE KEY    |
| year      | NUMBER        | PRIMARY KEY PART OF COMPOSITE KEY    |
| classRoom | VARCHAR2(50)  |                                       |

**Description**:
- Links professors to courses they teach in a specific semester and year.
- A composite primary key (`empId`, `courseId`, `sem`, `year`) ensures unique assignments.

---

### 7. **PreRequisite Table**
| Column         | Data Type | Constraints                           |
|----------------|-----------|---------------------------------------|
| preReqCourse   | NUMBER    | FOREIGN KEY REFERENCES course(courseId) |
| courseId       | NUMBER    | FOREIGN KEY REFERENCES course(courseId) |

**Description**:
- Represents the prerequisite relationships between courses.
- A composite primary key (`preReqCourse`, `courseId`) ensures unique relationships.

---


