-- 코드를 입력하세요
-- 년, 월, 성별 별로 상품을 구매한 회원수(USERS)를 집계
-- 년, 월, 성별을 기준으로 오름차순
-- 성별 정보가 없는 경우 결과에서 제외

SELECT YEAR(SALES_DATE) AS YEAR, 
       MONTH(SALES_DATE) AS MONTH, 
       GENDER,
       COUNT(DISTINCT O.USER_ID) AS USERS  -- 동일한 USER_ID가 중복되지 않도록 DISTINCT 추가
FROM ONLINE_SALE O
INNER JOIN USER_INFO U ON O.USER_ID = U.USER_ID  -- INNER JOIN으로 성별 정보가 없는 경우 제외
WHERE U.GENDER IS NOT NULL  -- 성별 정보가 없는 경우 제외
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER;