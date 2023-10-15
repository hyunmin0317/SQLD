DROP TABLE IF EXISTS SAMPLE;
CREATE TABLE SAMPLE(
    COL1 VARCHAR(32),
    COL2 VARCHAR(32)
);
INSERT INTO SAMPLE VALUES ('ORACLE', 'DATABASE');
INSERT INTO SAMPLE VALUES ('SQL', 'DEVELOPER');

SELECT LENGTH(RTRIM(COL1,'LE')) + LENGTH(LTRIM(COL2,'DE')) AS RESULT
FROM SAMPLE;
