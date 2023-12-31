BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE (
	COL1	VARCHAR(1),
	COL2	NUMBER
);

INSERT INTO SAMPLE VALUES('A',10);
INSERT INTO SAMPLE VALUES('B',20);
INSERT INTO SAMPLE VALUES('C',30);
INSERT INTO SAMPLE VALUES('D',15);
INSERT INTO SAMPLE VALUES('E',25);
INSERT INTO SAMPLE VALUES('F',35);

COMMIT;


SELECT COL1, COL2,
	   NTILE(4) OVER(ORDER BY COL2) AS NTILE
  FROM SAMPLE;
