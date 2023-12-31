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
	COL2	VARCHAR(4),
	COL3    VARCHAR(4)
);

CREATE TABLE SAMPLE2 (
    COL1    NUMBER,
	COL2	VARCHAR(4),
	COL3    VARCHAR(4)
);

INSERT INTO SAMPLE1 VALUES(1, '가', 'A');
INSERT INTO SAMPLE1 VALUES(2, '나', 'B');
INSERT INTO SAMPLE1 VALUES(3, '다', 'C');

INSERT INTO SAMPLE2 VALUES(1, '가', 'A');
INSERT INTO SAMPLE2 VALUES(2, '나', 'B');
INSERT INTO SAMPLE2 VALUES(3, '다', 'C');
INSERT INTO SAMPLE2 VALUES(4, '라', 'D');
INSERT INTO SAMPLE2 VALUES(5, '마', 'E');

MERGE INTO SAMPLE1 S1
USING SAMPLE2 S2
   ON (S1.COL1 = S2.COL1)
 WHEN MATCHED THEN
      UPDATE SET S1.COL2 = '라'
       WHERE S1.COL3 <> 'C'
      DELETE WHERE S1.COL2 = '라'
 WHEN NOT MATCHED THEN
      INSERT (S1.COL1, S1.COL2, S1.COL3)
      VALUES (S2.COL1, S2.COL2, S2.COL3);

SELECT COUNT(*) FROM SAMPLE1;
