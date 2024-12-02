-- 코드를 작성해주세요
-- 사원별 성과금 정보를 조회
-- 사번, 성명, 평가 등급(GRADE), 성과금(BONUS)을 조회
-- 사번 기준으로 오름차순 정렬
-- 기준 점수 테이블: 기준 점수는 1,2 평균?
# 기준 점수	평가 등급	성과금(연봉 기준)
# 96 이상	S	20%
# 90 이상	A	15%
# 80 이상	B	10%
# 이외	C	0%

WITH EMP_GRADE AS (
    SELECT EMP_NO,
           CASE WHEN AVG(SCORE) >= 96 THEN 'S'
                WHEN AVG(SCORE) >= 90 THEN 'A'
                WHEN AVG(SCORE) >= 80 THEN 'B'
                ELSE 'C' END AS GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO)
    
SELECT G.EMP_NO, E.EMP_NAME, G.GRADE,
       CASE WHEN G.GRADE = 'S' THEN SAL*0.2
            WHEN G.GRADE = 'A' THEN SAL*0.15
            WHEN G.GRADE = 'B' THEN SAL*0.1
            ELSE 0 END AS BONUS
FROM EMP_GRADE G
LEFT JOIN HR_EMPLOYEES E ON G.EMP_NO = E.EMP_NO
ORDER BY G.EMP_NO;
