SELECT PLAY_ID, NAME, FAVORITES
FROM PLAY_LIST
WHERE PLAY_ID BETWEEN 1 AND 5;

SELECT PLAY_ID, NAME, FAVORITES
FROM PLAY_LIST
WHERE PLAY_ID >= 1 AND PLAY_ID <= 5;

SELECT PLAY_ID, NAME, FAVORITES
FROM PLAY_LIST
WHERE NAME LIKE 'Classical%';
