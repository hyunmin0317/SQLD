SELECT * FROM(
    SELECT ROW_NUMBER() OVER(ORDER BY 국어 DESC, 영어 DESC, 수학 DESC) AS RNUM,
           이름,
           국어,
           영어,
           수학
      FROM EXAM_SCORE)
 WHERE RNUM <= 5;

SELECT * FROM(
    SELECT RANK() OVER(ORDER BY 국어 DESC, 영어 DESC, 수학 DESC) AS RANK,
           이름,
           국어,
           영어,
           수학
      FROM EXAM_SCORE)
 WHERE RANK <= 5;

SELECT * FROM(
    SELECT DENSE_RANK() OVER(ORDER BY 국어 DESC, 영어 DESC, 수학 DESC) AS DR,
           이름,
           국어,
           영어,
           수학
      FROM EXAM_SCORE)
 WHERE DR <= 5;
