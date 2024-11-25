-- 코드를 작성해주세요
-- 가장 큰 물고기 10마리
-- ID와 길이를 출력하는 SQL 문을 작성
-- 길이를 기준으로 내림차순 정렬하고, 길이가 같다면 물고기의 ID에 대해 오름차순 정렬
-- ID 컬럼명은 ID, 길이 컬럼명은 LENGTH

SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID
LIMIT 10;
