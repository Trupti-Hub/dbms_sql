CREATE TABLE Departments (
      DEPT_NO NUMBER(10) PRIMARY KEY,
      D_NAME VARCHAR(50) NOT NULL,
      LOCATION VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
      EMP_NO NUMBER(10) PRIMARY KEY,
      E_NAME VARCHAR(50) NOT NULL,
      AGE NUMBER(3) CONSTRAINT AGE_MUST_BE_MORE_THAN_21_YEAR CHECK (AGE >= 21),
      JOB_TITLE VARCHAR(50) NOT NULL,
      HIREDATE DATE NOT NULL,
      SALARY NUMBER(10) DEFAULT 5000 CONSTRAINT SALARY_MUST_BE_MORE_THAN_1000 CHECK(SALARY >= 1000),
      DEPT_NO NUMBER(10) REFERENCES Departments
);

INSERT INTO Departments VALUES (1, 'Human Resources', 'New York');
INSERT INTO Departments VALUES (2, 'Finance', 'Chicago');
INSERT INTO Departments VALUES (3, 'Engineering', 'San Francisco');
INSERT INTO Departments VALUES (4, 'Marketing', 'Los Angeles');
INSERT INTO Departments VALUES (5, 'Sales', 'Boston');

INSERT INTO Employees VALUES (101, 'Alice', 30, 'HR Manager','08-JUNE-2011', 6000, 1);
INSERT INTO Employees VALUES (102, 'Bob', 45, 'Financial Analyst', '05-MAY-2012', 7000, 2);
INSERT INTO Employees VALUES (103, 'Charlie', 28, 'Software Engineer', '26-JULY-2015', 8000, 3);
INSERT INTO Employees VALUES (104, 'Diana', 35, 'Marketing Specialist','20-NOV-2011', 6500, 4);
INSERT INTO Employees VALUES (105, 'Edward', 40, 'Sales Executive', '14-MARCH-2018', 5500, 5);
