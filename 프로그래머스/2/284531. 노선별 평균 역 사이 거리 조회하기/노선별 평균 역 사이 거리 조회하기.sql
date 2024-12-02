-- 코드를 작성해주세요
-- 노선, 총 누계 거리(TOTAL_DISTANCE: 역 사이 거리의 총 합), 평균 역 사이 거리(AVERAGE_DISTANCE) '노선별'로 조회
-- 총 누계거리는 소수 둘째자리에서, 평균 역 사이 거리는 소수 셋째 자리에서 반올림 한 뒤 단위(km)를 함께 출력
-- 총 누계 거리를 기준으로 내림차순 정렬
SELECT
    ROUTE,
    CONCAT(ROUND(SUM(D_BETWEEN_DIST), 1), 'km') AS TOTAL_DISTANCE,
    CONCAT(ROUND(AVG(D_BETWEEN_DIST), 2), 'km') AS AVERAGE_DISTANCE
FROM SUBWAY_DISTANCE
GROUP BY ROUTE
ORDER BY SUM(D_BETWEEN_DIST) DESC;