-- 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.
SELECT b.AUTHOR_ID,b.AUTHOR_NAME,a.CATEGORY,sum(SALES*PRICE) as TOTAL_SALES
from BOOK a 
left join AUTHOR b on a.AUTHOR_ID = b.AUTHOR_ID
left join BOOK_SALES c on a.BOOK_ID = c.BOOK_ID
WHERE year(c.SALES_DATE) = '2022' and month(c.SALES_DATE)='01'
group by b.AUTHOR_ID,b.AUTHOR_NAME,a.CATEGORY
order by b.AUTHOR_ID asc,a.CATEGORY desc