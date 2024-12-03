-- 잡은 물고기의 평균 길이(AVERAGE_LENGTH)를 출력하는 SQL문을 작성
-- 평균 길이는 소수점 3째자리에서 반올림/ 10cm 이하의 물고기들은 10cm 로 취급하여 평균 길이

SELECT ROUND(AVG(IFNULL(LENGTH, 10)),2) AS AVERAGE_LENGTH
FROM FISH_INFO