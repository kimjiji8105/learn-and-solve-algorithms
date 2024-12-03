-- 코드를 작성해주세요
-- ROOT 아이템의 PARENT 아이템 ID는 NULL
-- ROOT 아이템을 찾아 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME)을 출력
-- 결과는 아이템 ID를 기준으로 오름차순 정렬

SELECT T.ITEM_ID, ITEM_NAME
FROM ITEM_TREE T
LEFT JOIN ITEM_INFO I ON T.ITEM_ID = I.ITEM_ID 
WHERE PARENT_ITEM_ID IS NULL
ORDER BY ITEM_ID;