BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE(
    COL1 VARCHAR(16),
    COL2 VARCHAR(16)
);
INSERT INTO SAMPLE VALUES ('가', '가나다');
INSERT INTO SAMPLE VALUES ('2', '123');
INSERT INTO SAMPLE VALUES ('C', 'ABC');

SELECT CASE WHEN COL1 = 'C' THEN SUBSTR(COL2,2,1)
            WHEN COL1 = '가' THEN 'C'
            WHEN COL1 = '1' THEN '10'
            ELSE 'B'
        END AS RESULT
FROM SAMPLE;