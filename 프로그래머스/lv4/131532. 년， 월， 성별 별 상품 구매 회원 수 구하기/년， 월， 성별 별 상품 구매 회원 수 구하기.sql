-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.
SELECT YEAR(sales_date) as YEAR,
        MONTH(sales_date) as MONTH,
        GENDER,
        count(DISTINCT A.user_id) as USERS
FROM USER_INFO A JOIN ONLINE_SALE B ON A.USER_ID = B.USER_ID
where GENDER is not null
group by 1,2,3
order by 1,2,3