BEGIN
EXECUTE IMMEDIATE 'DROP TABLE EMP';
EXCEPTION WHEN OTHERS THEN NULL;
END;

BEGIN
EXECUTE IMMEDIATE 'DROP TABLE DEPT';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE EMP (
	JOB_ID		VARCHAR(10),
	EMP_NAME	VARCHAR(15),
	DEPT_ID		VARCHAR(3)
);

CREATE TABLE DEPT (
	DEPT_ID		VARCHAR(3),
	DEPT_NAME	VARCHAR(20)
);

INSERT INTO EMP VALUES('MK_MAN','이산','A01');
INSERT INTO EMP VALUES('SA_REP','성덕임','A01');
INSERT INTO EMP VALUES('SA_REP','홍덕로','A01');
INSERT INTO EMP VALUES('ST_MAN','홍적','A01');
INSERT INTO EMP VALUES('MK_REP','배경희','A02');
INSERT INTO EMP VALUES('AD_ASST','손영희','A02');
INSERT INTO EMP VALUES('IT_PROG','김복연','A02');
INSERT INTO EMP VALUES('PU_CLERK','김두성','A02');
INSERT INTO DEPT VALUES('A01','Marketing');
INSERT INTO DEPT VALUES('A02','Administration');

COMMIT;


SELECT CASE GROUPING(B.DEPT_NAME)
            WHEN 1 THEN '합계' ELSE B.DEPT_NAME
        END DEPT,
       CASE GROUPING(A.JOB_ID)
            WHEN 1 THEN '소계' ELSE A.JOB_ID
        END JOB,
       COUNT(*)
  FROM EMP A, DEPT B
 WHERE A.DEPT_ID = B.DEPT_ID
 GROUP BY ROLLUP(B.DEPT_NAME, A.JOB_ID);