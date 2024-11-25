-- 코드를 작성해주세요
-- 길이가 10cm 이하인 물고기의 수 / 물고기의 수를 나타내는 컬럼 명은 FISH_COUNT
-- 문제 오류: 이하인데 10CM를 세면 틀렸다고 함

SELECT COUNT(ID) AS FISH_COUNT
FROM FISH_INFO
WHERE LENGTH IS NULL;