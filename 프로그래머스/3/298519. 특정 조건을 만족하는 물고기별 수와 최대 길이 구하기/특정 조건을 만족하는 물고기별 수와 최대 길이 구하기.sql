-- 코드를 작성해주세요
-- 평균 길이가 33cm 이상인 물고기들을 종류별로 분류 -> 잡은 수(FISH_COUNT), 최대 길이(MAX_LENGTH), 물고기의 종류(FISH_TYPE)를 출력
-- 물고기 종류에 대해 오름차순으로 정렬
-- 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL: 10cm이하의 물고기들은 10cm로 취급하여 평균 길이

SELECT COUNT(ID) AS FISH_COUNT, MAX(LENGTH) AS MAX_LENGTH, FISH_TYPE
FROM FISH_INFO 
GROUP BY FISH_TYPE
HAVING AVG(IFNULL(LENGTH, 10)) >= 33
ORDER BY FISH_TYPE;
