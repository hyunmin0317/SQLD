SELECT * FROM SQLD;

SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       NTILE(1) OVER(ORDER BY SCORE DESC) AS NTILE1,
       NTILE(3) OVER(ORDER BY SCORE DESC) AS NTILE3,
       NTILE(5) OVER(ORDER BY SCORE DESC) AS NTILE5
  FROM SQLD;

SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       NTILE(1) OVER(PARTITION BY SUBJECT ORDER BY SCORE DESC) AS NTILE1,
       NTILE(3) OVER(PARTITION BY SUBJECT ORDER BY SCORE DESC) AS NTILE3,
       NTILE(5) OVER(PARTITION BY SUBJECT ORDER BY SCORE DESC) AS NTILE5
  FROM SQLD;
