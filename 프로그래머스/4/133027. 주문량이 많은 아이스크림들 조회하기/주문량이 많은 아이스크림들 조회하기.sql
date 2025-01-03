-- 코드를 입력하세요
-- 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값
-- 큰 순서대로 상위 3개의 맛을 조회

WITH TOTAL_ORDER AS (
    SELECT SHIPMENT_ID, FLAVOR, TOTAL_ORDER
    FROM FIRST_HALF 
    UNION 
    SELECT SHIPMENT_ID, FLAVOR, TOTAL_ORDER
    FROM JULY)

SELECT FLAVOR
FROM TOTAL_ORDER
GROUP BY FLAVOR
ORDER BY SUM(TOTAL_ORDER)  DESC
LIMIT 3

