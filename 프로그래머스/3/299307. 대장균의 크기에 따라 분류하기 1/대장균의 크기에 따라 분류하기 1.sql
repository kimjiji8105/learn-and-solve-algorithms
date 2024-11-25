-- 코드를 작성해주세요
-- 대장균 개체의 크기가 100 이하라면 'LOW', 100 초과 1000 이하라면 'MEDIUM', 1000 초과라면 'HIGH' 라고 분류
-- 장균 개체의 ID(ID) 와 분류(SIZE)를 출력하는 SQL 문
-- 결과는 개체의 ID 에 대해 오름차순 정렬

SELECT ID, CASE 
            WHEN SIZE_OF_COLONY > 1000 THEN "HIGH"
            WHEN SIZE_OF_COLONY > 100 THEN "MEDIUM"
            ELSE "LOW" END AS SIZE
FROM ECOLI_DATA 
ORDER BY ID;