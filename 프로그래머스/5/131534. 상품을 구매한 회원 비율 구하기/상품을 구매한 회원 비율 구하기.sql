-- 2021년에 가입한 전체 회원
-- 상품을 구매한 회원수, (2021년에 가입한 회원 중 상품을 구매한 회원수 / 2021년에 가입한 전체 회원 수)를 년, 월 별로 출력
-- 년을 기준으로 오름차순 정렬 / 월을 기준으로 오름차순 
-- 비율은 소수점 두번째자리에서 반올림

WITH USER_ALL AS(
    SELECT COUNT(DISTINCT(USER_ID))
    FROM USER_INFO
    WHERE YEAR(JOINED) = 2021
)

SELECT YEAR(SALES_DATE) AS YEAR, 
       MONTH(SALES_DATE) AS MONTH, 
       COUNT(DISTINCT O.USER_ID) AS PURCHASED_USERS,
       ROUND(COUNT(DISTINCT O.USER_ID)/(SELECT * FROM USER_ALL),1) AS PUCHASED_RATIO
FROM ONLINE_SALE O
LEFT JOIN USER_INFO U ON O.USER_ID = U.USER_ID
WHERE YEAR(JOINED) = 2021
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH


