**DBMS Lab Assignment**

This repository contains SQL scripts for a university database schema, including table creation, data insertion, and query solutions for various assignments.

**1. Table Creation:**

* The following tables are created with appropriate constraints:
    * **department:** Stores department information (deptId, name, hod, phone)
        * `deptId`: Primary Key
        * `name`: NOT NULL
        * `hod`: Foreign Key referencing `empId` in the `professor` table
    * **student:** Stores student information (rollNo, name, degree, year, sex, deptNo, advisor)
        * `rollNo`: Primary Key
        * `name`: NOT NULL
        * `deptNo`: Foreign Key referencing `deptId` in the `department` table
        * `advisor`: Foreign Key referencing `empId` in the `professor` table
    * **professor:** Stores professor information (empId, name, sex, startYear, deptNo, phone)
        * `empId`: Primary Key
        * `deptNo`: Foreign Key referencing `deptId` in the `department` table
    * **course:** Stores course information (courseId, cname, credits, deptNo)
        * `courseId`: Primary Key
        * `deptNo`: Foreign Key referencing `deptId` in the `department` table
    * **enrollment:** Stores student enrollment information (rollNo, courseId, sem, year, grade)
        * Composite Primary Key: (rollNo, courseId, sem, year)
        * `rollNo`: Foreign Key referencing `rollNo` in the `student` table
        * `courseId`: Foreign Key referencing `courseId` in the `course` table
    * **teaching:** Stores professor teaching information (empId, courseId, sem, year, classRoom)
        * Composite Primary Key: (empId, courseId, sem, year)
        * `empId`: Foreign Key referencing `empId` in the `professor` table
        * `courseId`: Foreign Key referencing `courseId` in the `course` table
    * **preRequisite:** Stores prerequisite course information (preReqCourse, courseId)
        * Composite Primary Key: (preReqCourse, courseId)
        * `preReqCourse`: Foreign Key referencing `courseId` in the `course` table
        * `courseId`: Foreign Key referencing `courseId` in the `course` table

**2. Data Insertion:**

* SQL scripts are provided to insert sample data into all the created tables.

**3. Assignment Solutions:**

* The repository contains SQL queries to solve various assignment questions, including:
    * Student-related queries (e.g., finding students by degree, gender, department)
    * Professor-related queries (e.g., finding professors by department, joining year)
    * Course-related queries (e.g., finding courses by credits, department)
    * Enrollment-related queries (e.g., finding student grades, top-graded students)
    * Complex queries involving joins, subqueries, and set operations

**4. Query Techniques:**

* The queries demonstrate the use of various SQL techniques, such as:
    * **JOINs:** Used to combine data from multiple tables (e.g., `INNER JOIN`, `LEFT JOIN`)
    * **Subqueries:** Used to nest queries within other queries
    * **Set Operations:** Used to combine or compare result sets (e.g., `UNION`, `EXCEPT`)
    * **Aggregate Functions:** Used to perform calculations on data (e.g., `COUNT`, `MAX`, `MIN`)
    * **Window Functions:** Used to perform calculations across rows within a result set (e.g., `RANK`, `DENSE_RANK`)

**Example:**

* **Finding students from the C.S.E department:**

```sql
SELECT s.rollNo, s.name
FROM student s
INNER JOIN department d ON s.deptNo = d.deptId
WHERE d.name = 'C.S.E';
```
This query uses an `INNER JOIN` to combine data from the `student` and `department` tables and then filters the results to include only students from the 'C.S.E' department.

**Note:**

* This README file provides a basic overview of the repository. 
* For detailed information and specific query solutions, please refer to the individual SQL files within the repository.

