SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       LAST_VALUE(SCORE) OVER(PARTITION BY SUBJECT
                                  ORDER BY SCORE
                                  RANGE BETWEEN UNBOUNDED PRECEDING
                                    AND UNBOUNDED FOLLOWING) AS LAST_VALUE
  FROM SQLD;
