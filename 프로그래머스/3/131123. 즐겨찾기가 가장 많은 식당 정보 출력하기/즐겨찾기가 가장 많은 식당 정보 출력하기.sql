-- 코드를 입력하세요
-- 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당
-- 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회
-- 음식 종류를 기준으로 내림차순 정렬

WITH REST AS (
    SELECT *, ROW_NUMBER() OVER(PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS NUM 
    FROM REST_INFO     
)
SELECT FOOD_TYPE, REST_ID, REST_NAME, FAVORITES
FROM REST
WHERE NUM = 1
ORDER BY FOOD_TYPE DESC;