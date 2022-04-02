-- Type of Triangle 
SELECT CASE
            WHEN A + B <= C OR  B + C <= A OR C + A <= B 
            THEN 'Not A Triangle'
            WHEN A = B      AND B = C
            THEN 'Equilateral'
            WHEN A = B      OR  B = C      OR C = A
            THEN 'Isosceles'
            ELSE 'Scalene'
        END
  FROM TRIANGLES
;


-- The PADS
SELECT CASE
            WHEN OCCUPATION = 'Doctor'
            THEN CONCAT(NAME, '(D)')
            WHEN OCCUPATION = 'Professor'
            THEN CONCAT(NAME, '(P)')
            WHEN OCCUPATION = 'Singer'
            THEN CONCAT(NAME, '(S)')
            ELSE CONCAT(NAME, '(A)')
        END
  FROM OCCUPATIONS
 ORDER BY NAME
;

SELECT CONCAT('There are a total of ', COUNT(OCCUPATION), ' ', LOWER(OCCUPATION), 's.')
  FROM OCCUPATIONS
 GROUP BY OCCUPATION
 ORDER BY COUNT(OCCUPATION) ASC
         ,OCCUPATION        ASC
; 