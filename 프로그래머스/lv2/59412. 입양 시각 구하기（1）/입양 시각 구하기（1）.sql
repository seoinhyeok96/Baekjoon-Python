-- 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬해야 합니다.
SELECT HOUR(DATETIME), COUNT(DATETIME) 
from ANIMAL_OUTS
WHERE  HOUR(DATETIME) >=9 AND HOUR(DATETIME) <= 19
GROUP BY HOUR(DATETIME) 
order by HOUR(DATETIME);