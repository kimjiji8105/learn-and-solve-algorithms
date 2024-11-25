-- 코드를 작성해주세요
-- 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID) 출력
-- YEAR_DEV: 분화된 연도별 가장 큰 대장균의 크기 - 각 대장균의 크기
-- 연도에 대해 오름차순, 대장균 크기의 편차에 대해 오름차순으로 정렬

SELECT M.YEAR, M.MAX_SIZE - E.SIZE_OF_COLONY AS YEAR_DEV, E.ID
FROM ECOLI_DATA E
LEFT JOIN (SELECT MAX(SIZE_OF_COLONY) AS MAX_SIZE,  
                  YEAR(DIFFERENTIATION_DATE) AS YEAR
           FROM ECOLI_DATA
           GROUP BY YEAR) M
ON M.YEAR = YEAR(E.DIFFERENTIATION_DATE)
ORDER BY M.YEAR, YEAR_DEV;




-- 틀린 코드: 왜인지 모르겠으나 날짜를 문자화하여 자르기를 하면 틀림..
# SELECT M.YEAR, M.MAX_SIZE - E.SIZE_OF_COLONY AS YEAR_DEV, E.ID
# FROM ECOLI_DATA E
# LEFT JOIN (SELECT MAX(SIZE_OF_COLONY) AS MAX_SIZE,  
#                   SUBSTR(DIFFERENTIATION_DATE, 1,4) AS YEAR
#            FROM ECOLI_DATA
#            GROUP BY YEAR) M
# ON M.YEAR = SUBSTR(E.DIFFERENTIATION_DATE, 1,4)
# ORDER BY M.YEAR, YEAR_DEV;