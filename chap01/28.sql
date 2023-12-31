BEGIN
EXECUTE IMMEDIATE 'DROP TABLE SAMPLE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE SAMPLE (
	COL	NUMBER
);

INSERT INTO SAMPLE VALUES(10);
INSERT INTO SAMPLE VALUES(20);
INSERT INTO SAMPLE VALUES(30);

COMMIT;


SELECT SUM(COL) FROM SAMPLE HAVING SUM(COL) > 50;
