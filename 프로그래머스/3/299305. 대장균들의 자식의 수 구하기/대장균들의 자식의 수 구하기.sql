-- 코드를 작성해주세요
-- 자식이 없다면 자식의 수는 0
-- 대장균 개체의 ID(ID)와 자식의 수(CHILD_COUNT)를 출력
-- 개체의 ID 에 대해 오름차순 정렬

SELECT P.ID AS ID, COUNT(S.PARENT_ID) AS CHILD_COUNT
FROM ECOLI_DATA P
LEFT JOIN ECOLI_DATA S ON P.ID = S.PARENT_ID
GROUP BY P.ID
ORDER BY ID;
