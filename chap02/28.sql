BEGIN
EXECUTE IMMEDIATE 'DROP TABLE EMP_INFO';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE EMP_INFO (
	EMP_NO		VARCHAR(3),
	NAME		VARCHAR(20),
	SAL			NUMBER
);

INSERT INTO EMP_INFO VALUES('100','Steven',24000);
INSERT INTO EMP_INFO VALUES('101','Neena',17000);
INSERT INTO EMP_INFO VALUES('102','Lex',17000);
INSERT INTO EMP_INFO VALUES('108','Nancy',12008);
INSERT INTO EMP_INFO VALUES('109','Daniel',9000);
INSERT INTO EMP_INFO VALUES('110','John',8200);
INSERT INTO EMP_INFO VALUES('111','Ismael',7800);
INSERT INTO EMP_INFO VALUES('112','Jose Manuel',7700);
INSERT INTO EMP_INFO VALUES('113','Luis',6900);
INSERT INTO EMP_INFO VALUES('119','Karen',2500);

COMMIT;


SELECT EMP_NO, NAME, SAL,
       LEAD(SAL, 3, -1) OVER(ORDER BY SAL DESC) AS SAL2
  FROM EMP_INFO;