-- 코드를 입력하세요
-- 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회
-- 12세 이하인 여자환자 / 전화번호가 없는 경우, 'NONE'으로 출력
-- 나이를 기준으로 내림차순 / 환자이름을 기준으로 오름차순 

SELECT PT_NAME, PT_NO, GEND_CD, AGE, CASE WHEN TLNO IS NULL 
                                     THEN 'NONE' ELSE TLNO END AS TLNO
FROM PATIENT
WHERE AGE < 13 AND gend_cd = 'W'
ORDER BY AGE DESC, PT_NAME;