BEGIN
EXECUTE IMMEDIATE 'DROP TABLE EMP_INFO';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE EMP_INFO(
	EMP_NO		VARCHAR(3),
	NAME		VARCHAR(15),
	MGR_NO		VARCHAR(3),
	DEPT_NO		VARCHAR(3)
);

INSERT INTO EMP_INFO VALUES('100','Steven',NULL,'90');
INSERT INTO EMP_INFO VALUES('101','Neena','100','90');
INSERT INTO EMP_INFO VALUES('102','Lex','100','90');
INSERT INTO EMP_INFO VALUES('108','Nancy','101','100');
INSERT INTO EMP_INFO VALUES('109','Daniel','108','100');
INSERT INTO EMP_INFO VALUES('110','John','108','100');
INSERT INTO EMP_INFO VALUES('111','Ismael','108','100');
INSERT INTO EMP_INFO VALUES('112','Jose Manuel','108','100');
INSERT INTO EMP_INFO VALUES('113','Luis','108','100');

COMMIT;


SELECT LPAD(EMP_NO,LEVEL*4,' ') AS EMP_NO,
	   NAME, MGR_NO, LEVEL
  FROM EMP_INFO
 START WITH MGR_NO IS NULL
 CONNECT BY PRIOR EMP_NO = MGR_NO;
