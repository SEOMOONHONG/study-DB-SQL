-- programmers 
-- SELECT
-- 여러 기준으로 정렬하기
-- Level 1

SELECT ANIMAL_ID
      ,NAME
      ,DATETIME
  FROM ANIMAL_INS
 ORDER BY NAME     ASC
         ,DATETIME DESC
;