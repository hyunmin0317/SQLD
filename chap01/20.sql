BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE (
	COL1	VARCHAR(5),
	COL2	CHAR(5)
);

INSERT INTO SAMPLE VALUES('SQL', 'SQL');

COMMIT;


SELECT * FROM SAMPLE WHERE COL1 = COL2;
SELECT * FROM SAMPLE WHERE COL1 = TRIM(COL2);
SELECT * FROM SAMPLE WHERE COL1 <> COL2;
SELECT * FROM SAMPLE WHERE COL1 = RTRIM(COL2);
