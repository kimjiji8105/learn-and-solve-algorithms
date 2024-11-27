-- 코드를 입력하세요
-- 2022년 10월 16일에 대여 중인 자동차인 경우 '대여중' 이라고 표시하고, 대여 중이지 않은 자동차인 경우 '대여 가능'을 표시하는 컬럼(컬럼명: AVAILABILITY)을 추가
-- 자동차 ID와 AVAILABILITY 리스트를 출력
-- 반납 날짜가 2022년 10월 16일인 경우에도 '대여중'으로 표시
-- 자동차 ID를 기준으로 내림차순 정렬
WITH CAR_AVAILABILITY AS (
    SELECT CAR_ID,
           CASE 
               WHEN START_DATE <= DATE('2022-10-16') AND END_DATE >= DATE('2022-10-16') THEN '대여중'
               ELSE '대여 가능'
           END AS AVAILABILITY
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE <= DATE('2022-10-16') -- 2022-10-16 이전에 대여를 시작한 기록만
       OR END_DATE >= DATE('2022-10-16')   -- 2022-10-16 이후에 대여를 종료한 기록만
)
SELECT CAR_ID, MAX(AVAILABILITY) AS AVAILABILITY
FROM CAR_AVAILABILITY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;
