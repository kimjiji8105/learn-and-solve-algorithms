-- 코드를 작성해주세요
-- 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 
-- 월별 잡은 물고기의 수(FISH_COUNT)와 월(MONTH)을 출력
-- 월을 기준으로 오름차순 정렬
-- 월은 숫자형태 (1~12) 로 출력하며 9 이하의 숫자는 두 자리로 출력하지 않습니다. / 잡은 물고기가 없는 월은 출력하지 않습니다.

SELECT COUNT(ID) AS FISH_COUNT, MONTH(TIME) AS MONTH
FROM FISH_INFO 
GROUP BY MONTH
ORDER BY MONTH