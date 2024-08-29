CREATE TABLE Customer (
        CUST_ID VARCHAR2(5) PRIMARY KEY,
        CUST_NAME VARCHAR(50),
        CUST_CITY VARCHAR(50),
        EMAIL_ID VARCHAR2(50) CONSTRAINT MUST_BE_ENTER_VALID_AND_UNIQUE_EMAIL_ID CHECK(EMAIL_ID LIKE '__%@__%.__%'),
        CONTACT_NUMBER NUMBER(10) UNIQUE CONSTRAINT MUST_BE_ENTER_VALID_AND_UNIQUE_CONTACT_NUMBER CHECK (REGEXP_LIKE(CONTACT_NUMBER,'^[789][0-9]{9}$'))
);

CREATE TABLE Magazine (
        MAG_ID VARCHAR2(5) PRIMARY KEY,
        MAG_NAME VARCHAR2(50),
        UNITE_RATE NUMBER(10),
        TYPES_OF_SUBSCRIPTION VARCHAR(15) CONSTRAINT TYPES_OF_SUBSCRIPTIONMUST_BE_FROM_DAILY_WEEKLY_MONTHLY_QUARTERLY CHECK (UPPER(TYPES_OF_SUBSCRIPTION) IN ('DAILY','WEEKLY','MONTHLY','QUARTERLY'))
);

CREATE TABLE Subscription(
        CUST_ID VARCHAR2(5) REFERENCES Customer,
        MAG_ID VARCHAR2(5) REFERENCES Magazine,
        START_DATE DATE,
        END_DATE DATE
);

INSERT INTO Customer VALUES ('C1', 'Henri', 'Mumbai', 'hen@gmail.com', 8974563210);
INSERT INTO Magazine VALUES('M1', 'Ikigai', 10, 'MONTHLY');
INSERT INTO Subscription VALUES('C1', 'M1', '1-SEP-2024', '30-SEP-2024');
