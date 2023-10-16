BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE(
    COL1 INT,
    COL2 INT,
    COL3 INT
);
INSERT INTO SAMPLE VALUES (NULL, 30, 15);
INSERT INTO SAMPLE VALUES (25, NULL, 0);
INSERT INTO SAMPLE VALUES (65, 20, NULL);

SELECT AVG(COL1) RESULT1,
       SUM(COL2) RESULT2,
       COUNT(COL3) RESULT3
FROM SAMPLE;
