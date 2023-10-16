BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE REVIEW';
EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -942 THEN
            RAISE;
        END IF;
END;

CREATE TABLE REVIEW (
    PRODUCT_ID INT,
    MEMBER_NO INT,
    REVIEW_SCORE INT,
    REVIEW VARCHAR(32)
);
INSERT INTO REVIEW VALUES (100001, 1, 5, '넘나 좋다는 것!');
INSERT INTO REVIEW VALUES (100001, 3, NULL, NULL);
INSERT INTO REVIEW VALUES (100001, 4, 1, '별로..');
INSERT INTO REVIEW VALUES (100001, 7, 3, '그냥저냥 쓸만 했음');

SELECT MEMBER_NO,
       NVL(REVIEW_SCORE, 0) AS REVIEW_SCORE
FROM REVIEW;

SELECT MEMBER_NO,
       NULLIF(REVIEW_SCORE, 0) AS REVIEW_SCORE,
       REVIEW
FROM REVIEW
WHERE PRODUCT_ID = '100001';