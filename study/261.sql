SELECT * FROM SQLD;

SELECT STUDENT_NAME,
       SUBJECT,
       SCORE,
       COUNT(*) OVER(ORDER BY SCORE) AS COUNT,
       COUNT(*) OVER() AS TOTAL_COUNT,
       COUNT(*) OVER(ORDER BY SCORE)/COUNT(*) OVER() AS "COUNT/TOTAL_COUNT",
       CUME_DIST() OVER(ORDER BY SCORE) AS CUME_DIST
  FROM SQLD;