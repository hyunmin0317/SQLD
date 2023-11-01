-- RUNNING_MAN 테이블
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE ENTERTAINER';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE ENTERTAINER(
    NAME VARCHAR(16),
    JOB VARCHAR(32),
    BIRTHDAY VARCHAR(16)
);
INSERT INTO ENTERTAINER VALUES ('이지은', '가수,배우,작곡자', '19930516');
INSERT INTO ENTERTAINER VALUES ('김향기', '배우', '20000809');
INSERT INTO ENTERTAINER VALUES ('김태형', '가수,작곡자', '19951230');
INSERT INTO ENTERTAINER VALUES ('유건우', '배우', '19830925');

-- INFINITE_CHALLENGE 테이블
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE DRINK';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE DRINK(
    DRINK_CODE VARCHAR(32),
    DRINK_NAME VARCHAR(32)
);
INSERT INTO DRINK VALUES ('A1001', '아메리카노');
INSERT INTO DRINK VALUES ('B1002', '카페라떼');
INSERT INTO DRINK VALUES ('C1003', '콜드브루');

COMMIT;


SELECT NAME, JOB, BIRTHDAY FROM ENTERTAINER;

SELECT DRINK_CODE, DRINK_NAME FROM DRINK;

SELECT A.NAME,
       A.JOB,
       A.BIRTHDAY,
       B.DRINK_CODE,
       B.DRINK_NAME
 FROM ENTERTAINER A CROSS JOIN DRINK B;
