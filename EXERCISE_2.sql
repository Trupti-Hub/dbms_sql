DESC LICENSE;
DESC VOTERS;

INSERT INTO LICENSE VALUES(1,'John','RJK');
INSERT INTO VOTERS VALUES(1,'Lilli','RJK');
INSERT INTO VOTERS VALUES(2,'Jeck','RJK');

TRUNCATE TABLE LICENSE;

CREATE TABLE LICENSE (
        LIC_NO NUMBER(10),
        HOLDER_NAME VARCHAR(20),
        AGE NUMBER(10)
);

ALTER TABLE LICENSE ADD(CITY VARCHAR(20));

ALTER TABLE LICENSE ADD PRIMARY KEY (LIC_NO);

ALTER TABLE LICENSE ADD CONSTRAINT AGE_MUST_BE_GREATER_THAN_18 CHECK (AGE > 18);

ALTER TABLE LICENSE MODIFY (LIC_NO VARCHAR2(10));

ALTER TABLE LICENSE RENAME COLUMN AGE TO OLD;

ALTER TABLE LICENSE DROP CONSTRAINT AGE_MUST_BE_GREATER_THAN_18; 

ALTER TABLE LICENSE DROP COLUMN OLD;

ALTER TABLE LICENSE DROP PRIMARY KEY;

ALTER TABLE LICENSE RENAME TABLE LICENSE TO VOTERS;

ALTER TABLE VOTERS ADD PRIMARY KEY (LIC_NO,CITY);

ALTER TABLE VOTERS ADD UNIQUE (CITY);
