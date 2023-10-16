BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE(
    COL1 INT,
    COL2 INT
);
INSERT INTO SAMPLE VALUES (-10, 15);
INSERT INTO SAMPLE VALUES (5, -5);

SELECT ABS(COL1) * SIGN(COL2) AS RESULT FROM SAMPLE;
