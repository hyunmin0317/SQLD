SELECT ROWNUM,
       이름,
       국어,
       영어,
       수학
  FROM (
      SELECT 이름,
             국어,
             영어,
             수학
        FROM EXAM_SCORE
       ORDER BY 국어 DESC, 영어 DESC, 수학 DESC)
 WHERE ROWNUM <= 5;

SELECT ROWNUM,
       이름,
       국어,
       영어,
       수학
  FROM EXAM_SCORE
 WHERE ROWNUM <= 5
 ORDER BY 국어 DESC, 영어 DESC, 수학 DESC;
