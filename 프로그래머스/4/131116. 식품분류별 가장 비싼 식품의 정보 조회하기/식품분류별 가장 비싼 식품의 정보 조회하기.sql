-- 코드를 입력하세요
-- 식품분류별로 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회하는 SQL문
-- 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력
-- 식품 가격을 기준으로 내림차순 정렬

WITH PRODUCT_RANK AS (SELECT CATEGORY, PRICE, PRODUCT_NAME,
                      ROW_NUMBER() OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC) AS ROW_NUM
                      FROM FOOD_PRODUCT)
                      
SELECT CATEGORY, PRICE, PRODUCT_NAME
FROM PRODUCT_RANK
WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
AND ROW_NUM = 1
ORDER BY PRICE DESC;

