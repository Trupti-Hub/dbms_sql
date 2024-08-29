CREATE TABLE Applicant (
        A_ID VARCHAR2(2) PRIMARY KEY,
        A_NAME VARCHAR2(50),
        BIRTH_DATE TIMESTAMP,
        EMAIL VARCHAR2(50) CONSTRAINT MUST_BE_ENTER_VALID_AND_UNIQUE_EMAIL CHECK(EMAIL LIKE '__%@__%.__%'),
        MOBILE NUMBER(10) UNIQUE CONSTRAINT MUST_BE_ENTER_VALID_AND_UNIQUE_MOBILE_NUMBER CHECK (REGEXP_LIKE(MOBILE,'^[789][0-9]{9}$'))
);

CREATE TABLE Entrance_Test (
        ET_ID VARCHAR2(3) PRIMARY KEY,
        ET_NAME VARCHAR2(50),
        MAX_SCORE NUMBER(10),
        CUT_SCORE NUMBER(10)
);

CREATE TABLE Etest_Center (
        ETC_ID VARCHAR2(4) PRIMARY KEY,
        LOCATION VARCHAR2(50),
        INCHARGE NUMBER(10),
        CAPACITY NUMBER(10)
);

CREATE TABLE Etest_Detatils (
        A_ID VARCHAR2(4) REFERENCES Applicant,
        ET_ID VARCHAR2(3) REFERENCES Entrance_Test,
        ETC_ID VARCHAR2(4) REFERENCES Etest_Center,
        ETEST_DETAILS VARCHAR2(50) PRIMARY KEY,
        SCORE NUMBER(10)
);

INSERT INTO Applicant VALUES ('A1', 'Urja', '12-DEC-2002', 'urja12@gmail.com', 9874103256);

INSERT INTO Entrance_Test VALUES ('ET1', 'CMAT', 500, 450);

INSERT INTO Etest_Center VALUES ('ETC1', 'Pune', 500, 100);

INSERT INTO Etest_Detatils VALUES ('A1', 'ET1', 'ETC1', 'Examination for Admission', 455);
