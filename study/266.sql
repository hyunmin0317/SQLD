SELECT ROWNUM,
       이름,
       국어,
       영어,
       수학
  FROM EXAM_SCORE;

SELECT ROWNUM,
       이름,
       국어,
       영어,
       수학
  FROM EXAM_SCORE
 WHERE ROWNUM = 5;

SELECT ROWNUM,
       이름,
       국어,
       영어,
       수학
  FROM EXAM_SCORE
 WHERE ROWNUM <= 5;
