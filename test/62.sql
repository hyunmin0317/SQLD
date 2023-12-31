BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE (
    COL1    NUMBER,
    COL2    NUMBER
);

INSERT INTO SAMPLE VALUES(10, 5);
INSERT INTO SAMPLE VALUES(20, NULL);
INSERT INTO SAMPLE VALUES(NULL, 15);

COMMIT;


SELECT SUM(COL1), SUM(COL2)
  FROM SAMPLE
 WHERE COL2 IS NOT NULL;
