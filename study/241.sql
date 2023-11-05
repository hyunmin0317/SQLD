SELECT * FROM SQLD;

SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       FIRST_VALUE(SCORE) OVER(ORDER BY SCORE) AS FIRST_VALUE
  FROM SQLD;


SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       FIRST_VALUE(SCORE) OVER(PARTITION BY SUBJECT
                                   ORDER BY SCORE DESC) AS FIRST_VALUE
  FROM SQLD;
