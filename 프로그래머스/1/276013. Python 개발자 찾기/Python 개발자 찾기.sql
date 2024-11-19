-- 코드를 작성해주세요
-- Python 스킬을 가진 개발자의 정보를 조회
-- 개발자의 ID, 이메일, 이름, 성을 조회
-- ID를 기준으로 오름차순 정렬
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS 
WHERE SKILL_1 LIKE 'Python' OR SKILL_2 LIKE 'Python' OR SKILL_3 LIKE 'Python'
ORDER BY ID;