# University Database Tables

This document contains the structure and details of the tables in the university database.

## Tables

### 1. Student
| Column    | Description           |
|-----------|-----------------------|
| rollNo    | Roll number of student |
| name      | Name of the student    |
| degree    | Degree pursued         |
| year      | Year of study          |
| sex       | Gender of student      |
| deptNo    | Department number      |
| advisor   | Advisor's employee ID  |

#### Data:
| RollNo | Name                | Degree | Year | Sex   | DeptNo | Advisor |
|--------|---------------------|--------|------|-------|--------|---------|
| 1      | Parag Roy          | B.E    | 3    | Male  | 1      | CS005   |
| 2      | Rituparna Kashyap  | B.E    | 3    | Male  | 1      | CS005   |
| 3      | Neha               | B.E    | 3    | Female| 1      | CS005   |
| 4      | Raman              | B.E    | 4    | Male  | 2      | EC004   |
| 5      | Surja Sanyal       | M.E    | 2    | Male  | 1      | CS005   |
| 6      | Susahant Satyam    | M.E    | 1    | Male  | 2      | EC004   |
| 7      | Kamalika Samanta   | M.E    | 1    | Female| 1      | CS005   |
| 8      | Aparajita          | B.E    | 2    | Female| 2      | EC004   |
| 9      | Sirajul Islam      | M.E    | 2    | Male  | 2      | EC004   |
| 10     | Manisha Chaudhury  | M.E    | 2    | Female| 2      | EC004   |

---

### 2. Department
| Column | Description         |
|--------|---------------------|
| deptId | Department ID       |
| name   | Department name     |
| hod    | Head of department  |
| phone  | Phone number        |

#### Data:
| DeptId | Name   | Hod            | Phone     |
|--------|--------|----------------|-----------|
| 1      | C.S.E  | CS006          | 2558777   |
| 2      | E.C.E  | EC004          | 2558776   |

---

### 3. Professor
| Column     | Description         |
|------------|---------------------|
| empId      | Employee ID         |
| name       | Name of professor   |
| sex        | Gender of professor |
| startYear  | Year started        |
| deptNo     | Department number   |
| phone      | Phone number        |

#### Data:
| EmpId | Name                  | Sex   | StartYear | DeptNo | Phone       |
|-------|-----------------------|-------|-----------|--------|-------------|
| CS001 | Dr.Biplab Sarkar      | Male  | 1982      | 1      | 9434122345  |
| CS002 | Dr.Souvik Bhattarcharya| Male  | 2000      | 1      | 9345134677  |
| CS003 | Mr.Sanjoy Pratihar    | Male  | 2003      | 1      | 9332657342  |
| CS004 | Mrs.Kasturi Dikpati   | Female| 2003      | 1      | 9414321908  |
| CS005 | Mr.Biswanath Pal      | Male  | 2004      | 1      | 9454123876  |
| EC001 | Dr.B.C.Sarkar         | Male  | 1986      | 2      | 9456128867  |
| EC002 | Mrs.Smita Hazra       | Female| 2002      | 2      | 9465123417  |
| EC003 | Mr.Somnath Pal        | Male  | 2005      | 2      | 9435129078  |
| CS006 | Mr.Sripati Mukherjee  | Male  | 1977      | 1      | 9435675489  |
| EC004 | Mr.Bivas Paramanik    | Male  | 2002      | 2      | 9453215789  |

---

### 4. Course
| Column   | Description         |
|----------|---------------------|
| courseId | Course ID           |
| cname    | Course name         |
| credits  | Credits assigned    |
| deptNo   | Department number   |

#### Data:
| CourseId | Cname      | Credits | DeptNo |
|----------|------------|---------|--------|
| UCS001   | UG(CSE)    | 2       | 1      |
| PCS001   | PG(CSE)    | 4       | 1      |
| UEC001   | UG(ECE)    | 2       | 2      |
| PEC001   | PG(ECE)    | 4       | 2      |

---

### 5. Enrollment
| Column   | Description         |
|----------|---------------------|
| rollNo   | Roll number         |
| courseId | Course ID           |
| sem      | Semester            |
| year     | Year of enrollment  |
| grade    | Grade obtained      |

#### Data:
| RollNo | CourseId | Sem | Year | Grade |
|--------|----------|-----|------|-------|
| 1      | UCS001   | 6   | 3    | A     |
| 2      | UCS001   | 6   | 3    | B     |
| 3      | UCS001   | 6   | 3    | A+    |
| 4      | UEC001   | 8   | 4    | A     |
| 5      | PCS001   | 4   | 2    | A+    |
| 6      | PEC001   | 2   | 1    | A+    |
| 7      | PCS001   | 2   | 1    | A++   |
| 8      | UEC001   | 4   | 2    | B++   |
| 9      | PEC001   | 4   | 2    | A     |
| 10     | PEC001   | 4   | 2    | B++   |

---

### 6. Teaching
| Column   | Description         |
|----------|---------------------|
| empId    | Employee ID         |
| courseId | Course ID           |
| sem      | Semester            |
| year     | Year of teaching    |
| classRoom| Classroom assigned  |

#### Data:
| EmpId | CourseId | Sem | Year | Classroom |
|-------|----------|-----|------|-----------|
| CS001 | PCS001   | 2   | 1    | PC-1      |
| CS001 | PCS001   | 4   | 2    | PC-2      |
| CS002 | PCS001   | 2   | 1    | PC-1      |
| CS003 | UCS001   | 6   | 3    | UC-1      |
| CS004 | UCS001   | 6   | 3    | UC-1      |
| CS005 | PCS001   | 2   | 1    | PC-1      |
| CS005 | UCS001   | 6   | 3    | UC-1      |
| EC001 | UEC001   | 4   | 2    | UE-1      |
| EC002 | UEC001   | 4   | 2    | UE-1      |
| EC003 | PCE001   | 4   | 2    | PE-1      |
| EC003 | UCE001   | 6   | 3    | UE-1      |

---

### 7. Prerequisite
| Column       | Description        |
|--------------|--------------------|
| preReqCourse | Prerequisite course|
| courseId     | Course ID          |

#### Data:
| preReqCourse | courseId |
|--------------|----------|
| H.S          | UCS001   |
| B.E          | PCS001   |
| H.S          | UEC001   |
| B.E          | PEC001   |

