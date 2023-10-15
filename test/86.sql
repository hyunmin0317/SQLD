DROP TABLE IF EXISTS SAMPLE;
CREATE TABLE SAMPLE(
    COL1 VARCHAR(32),
    COL2 VARCHAR(32)
);
INSERT INTO SAMPLE VALUES ('ORACLE', 'DATABASE');
INSERT INTO SAMPLE VALUES ('SQL', 'DEVELOPER');

SELECT LENGTH(SUBSTR(COL1,3,3)) + LENGTH(SUBSTR(COL2,2)) AS RESULT
FROM SAMPLE;
