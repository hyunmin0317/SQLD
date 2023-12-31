SELECT * FROM SQLD;

SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       LAST_VALUE(SCORE) OVER(ORDER BY SCORE) AS LAST_VALUE
  FROM SQLD;


SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       LAST_VALUE(SCORE) OVER(ORDER BY SCORE
                              RANGE BETWEEN UNBOUNDED PRECEDING
                                AND UNBOUNDED FOLLOWING) AS LAST_VALUE
  FROM SQLD;
