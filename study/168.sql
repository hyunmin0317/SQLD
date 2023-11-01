SELECT M.PRODUCT_CODE,
       (SELECT S.PRODUCT_NAME
          FROM PRODUCT S
         WHERE S.PRODUCT_CODE = M.PRODUCT_CODE) AS PRODUCT_NAME,
       M.MEMBER_ID,
       M.CONTENT
  FROM PRODUCT_REVIEW M;

SELECT M.PRODUCT_CODE,
       (SELECT S.PRODUCT_NAME, S.PRICE
          FROM PRODUCT S
         WHERE S.PRODUCT_CODE = M.PRODUCT_CODE) AS PRODUCT_INFO,
       M.MEMBER_ID,
       M.CONTENT
  FROM PRODUCT_REVIEW M;

SELECT M.PRODUCT_CODE,
       (SELECT S.PRODUCT_NAME
          FROM PRODUCT S
         WHERE S.PRODUCT_CODE = M.PRODUCT_CODE) AS PRODUCT_NAME,
       (SELECT S.PRICE
          FROM PRODUCT S
         WHERE S.PRODUCT_CODE = M.PRODUCT_CODE) AS PRICE,
       M.MEMBER_ID,
       M.CONTENT
  FROM PRODUCT_REVIEW M;