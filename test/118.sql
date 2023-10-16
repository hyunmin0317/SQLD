BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE(
    COL1 VARCHAR(8),
    COL2 VARCHAR(8),
    COL3 INT
);
INSERT INTO SAMPLE VALUES ('가', 'C', NULL);
INSERT INTO SAMPLE VALUES ('나', 'B', 2);
INSERT INTO SAMPLE VALUES ('가', 'C', 1);
INSERT INTO SAMPLE VALUES ('라', 'A', 3);
INSERT INTO SAMPLE VALUES ('라', 'B', 2);

SELECT *
FROM SAMPLE
ORDER BY COL1 DESC, COL2, COL3 DESC;