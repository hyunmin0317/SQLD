BEGIN
EXECUTE IMMEDIATE 'DROP TABLE MEMBER';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE MEMBER (
	MEMBER_ID	VARCHAR(3),
	MEMBER_NAME	VARCHAR(10),
	MEMBER_TYPE VARCHAR(5),
	REGIST_DATE	DATE
);

INSERT INTO MEMBER VALUES ('A01','김일','GOLD',TO_DATE('20210501','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A02','김이','GOLD',TO_DATE('20210601','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A03','김삼','GOLD',TO_DATE('20210701','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A04','김사','GOLD',TO_DATE('20210801','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A05','김오','GOLD',TO_DATE('20210901','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A06','김육','GOLD',TO_DATE('20211001','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A07','김칠','GOLD',TO_DATE('20211101','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A08','김팔','GOLD',TO_DATE('20211201','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A09','김구','GOLD',TO_DATE('20211231','YYYYMMDDHH24MISS'));
INSERT INTO MEMBER VALUES ('A10','김십','GOLD',TO_DATE('20220101','YYYYMMDDHH24MISS'));

COMMIT;

SELECT COUNT(*)
  FROM MEMBER
 WHERE REGIST_DATE BETWEEN TO_DATE('20210101') AND TO_DATE('20220101');

SELECT COUNT(*)
  FROM MEMBER
 WHERE TO_CHAR(REGIST_DATE,'YYYY') = '2021';

SELECT COUNT(*)
  FROM MEMBER
 WHERE REGIST_DATE >= TO_DATE('20210101')
   AND REGIST_DATE <= TO_DATE('20211231');

SELECT COUNT(*)
  FROM MEMBER
 WHERE REGIST_DATE >= TO_DATE('20210101')
   AND REGIST_DATE < TO_DATE('20220101');
