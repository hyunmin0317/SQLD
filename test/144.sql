BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE1';
EXCEPTION WHEN OTHERS THEN NULL;
END;

BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE2';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE1 (
    COL1    NUMBER,
	COL2	VARCHAR(4)
);

CREATE TABLE SAMPLE2 (
	COL1	NUMBER,
	COL3	NUMBER
);

INSERT INTO SAMPLE1 VALUES(2,'G');
INSERT INTO SAMPLE1 VALUES(4,'I');

INSERT INTO SAMPLE2 VALUES(1, 55);
INSERT INTO SAMPLE2 VALUES(2, 12);
INSERT INTO SAMPLE2 VALUES(3, 30);
INSERT INTO SAMPLE2 VALUES(4, 33);
INSERT INTO SAMPLE2 VALUES(4, 20);

COMMIT;


SELECT A.COL1, B.COL3
  FROM SAMPLE1 A, SAMPLE2 B
 WHERE B.COL3 % 5 = 0;
