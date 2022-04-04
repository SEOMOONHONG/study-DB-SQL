-- programmers 
-- SELECT
-- 상위 n개 레코드
-- Level 1

SELECT NAME
  FROM ANIMAL_INS
 WHERE DATETIME = (SELECT MIN(DATETIME) 
                     FROM ANIMAL_INS
                  )
;