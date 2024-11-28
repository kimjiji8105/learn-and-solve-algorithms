-- 코드를 입력하세요
-- 대여 시작일을 기준으로 2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상
-- 월별 자동차 ID 별 총 대여 횟수(컬럼명: RECORDS) 리스트를 출력
-- 월을 기준으로 오름차순 정렬 / 자동차 ID를 기준으로 내림차순 정렬
-- 특정 월의 총 대여 횟수가 0인 경우에는 결과에서 제외

WITH RECORD AS (
    SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(CAR_ID) AS RECORDS, 
           SUM(COUNT(CAR_ID)) OVER (PARTITION BY CAR_ID) AS TOT_RECORDS
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
    WHERE START_DATE >= STR_TO_DATE('2022-08-01', '%Y-%m-%d')
    AND START_DATE < STR_TO_DATE('2022-11-01', '%Y-%m-%d')
    GROUP BY CAR_ID, MONTH(START_DATE))

SELECT MONTH, CAR_ID, RECORDS
FROM RECORD
WHERE TOT_RECORDS > 4
ORDER BY MONTH, CAR_ID DESC;

