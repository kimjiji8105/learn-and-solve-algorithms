-- 코드를 작성해주세요
-- 테이블에서 희귀도가 'LEGEND'인 아이템들의 가격의 총합을
-- 컬럼명은 'TOTAL_PRICE'

SELECT SUM(PRICE) AS TOTAL_PRICE
FROM ITEM_INFO
WHERE RARITY = 'LEGEND'