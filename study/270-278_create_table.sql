-- SQLD 테이블
BEGIN
EXECUTE IMMEDIATE 'DROP TABLE CATEGORY';
EXCEPTION WHEN OTHERS THEN NULL;
END;

CREATE TABLE CATEGORY(
    CATEGORY_TYPE VARCHAR(4),
    CATEGORY_NAME VARCHAR(64),
    PARENT_CATEGORY VARCHAR(64)
);

INSERT INTO CATEGORY VALUES ('대', '컴퓨터/디지털/가전', NULL);
INSERT INTO CATEGORY VALUES ('중', '컴퓨터', '컴퓨터/디지털/가전');
INSERT INTO CATEGORY VALUES ('중', '디지털', '컴퓨터/디지털/가전');
INSERT INTO CATEGORY VALUES ('중', '가전', '컴퓨터/디지털/가전');
INSERT INTO CATEGORY VALUES ('소', '노트북/PC', '컴퓨터');
INSERT INTO CATEGORY VALUES ('소', '모니터/프린터', '컴퓨터');
INSERT INTO CATEGORY VALUES ('소', '모바일/태블릿', '디지털');
INSERT INTO CATEGORY VALUES ('소', '카메라', '디지털');
INSERT INTO CATEGORY VALUES ('소', '영상가전', '가전');
INSERT INTO CATEGORY VALUES ('소', '음향가전', '가전');

COMMIT;