/* Note :

    SQL is incase sennsitive but data of SQL is case sensitive.
    Example -> SQL and sql both are different

    CONSTRAINT name shold not be repated 

*/

-- Create Table [CREATE Query]

CREATE TABLE student(

    EnrollmentNo number(5) Primary Key,
    Name Varchar(10) Not Null,
    City Varchar(10) Default 'Sydney',
    Gender Varchar(7),
    ContectNo Number(10) UNIQUE CHECK(LENGTH(ContectNo)=10),
    Fees Number(10) Default '50000' CONSTRAINT check_fees CHECK(Fees >= 50000)
    
);

-- Insert Data Into Table [INSERT Query]

INSERT INTO student VALUES(24001,'John','Canberra','Male',6845697103,50500);
INSERT INTO student VALUES(24002,'Jorden',default,'Male',6869007103,500); -- Error :  "check_fees", City add by default 
INSERT INTO student (EnrollmentNo,Name,Gender,ContectNo) VALUES (24003,'Lilly','Female',6812507103); -- City,Fees add by default

-- Display or Fatch Data [SELECT Query]

SELECT * FROM student;

-- Delete or Drop Table [DROP Query]

DROP TABLE student;

-- Delete Particular Data From Table [DELETE Query]

DELETE FROM student WHERE ENROLLMENTNO=24002;

-- Delete All Data From Table [DELETE Query]

TRUNCATE TABLE student;

-- Update Data From Table [UPDATE Query]

UPDATE student SET Name = 'Jack', City = 'Brisbane' WHERE EnrollmentNo = 24002;







