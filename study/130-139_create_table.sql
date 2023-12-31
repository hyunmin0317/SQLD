-- RUNNING_MAN 테이블
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE RUNNING_MAN';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE RUNNING_MAN(
    CAST VARCHAR(32),
    GENDER VARCHAR(4),
    JOB VARCHAR(16)
);
INSERT INTO RUNNING_MAN VALUES ('유재석', '남', '개그맨');
INSERT INTO RUNNING_MAN VALUES ('지석진', '남', '개그맨');
INSERT INTO RUNNING_MAN VALUES ('김종국', '남', '가수');
INSERT INTO RUNNING_MAN VALUES ('전소민', '여', '배우');
INSERT INTO RUNNING_MAN VALUES ('송지효', '여', '배우');
INSERT INTO RUNNING_MAN VALUES ('이광수', '남', '배우');
INSERT INTO RUNNING_MAN VALUES ('하하', '남', '개그맨');
INSERT INTO RUNNING_MAN VALUES ('양세찬', '남', '개그맨');

-- INFINITE_CHALLENGE 테이블
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE INFINITE_CHALLENGE';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE INFINITE_CHALLENGE(
    CAST VARCHAR(32),
    GENDER VARCHAR(4),
    JOB VARCHAR(16)
);
INSERT INTO INFINITE_CHALLENGE VALUES ('유재석', '남', '개그맨');
INSERT INTO INFINITE_CHALLENGE VALUES ('박명수', '남', '개그맨');
INSERT INTO INFINITE_CHALLENGE VALUES ('정준하', '남', '개그맨');
INSERT INTO INFINITE_CHALLENGE VALUES ('하하', '남', '개그맨');
INSERT INTO INFINITE_CHALLENGE VALUES ('양세형', '남', '개그맨');
INSERT INTO INFINITE_CHALLENGE VALUES ('조세호', '남', '개그맨');

COMMIT;
