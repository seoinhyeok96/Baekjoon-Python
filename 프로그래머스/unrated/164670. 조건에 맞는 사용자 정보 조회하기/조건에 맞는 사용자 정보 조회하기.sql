-- USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 중고 거래 게시물을 3건 이상 등록한 사용자의 사용자 ID, 닉네임, 전체주소, 전화번호를 조회하는 SQL문을 작성해주세요. 이때, 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력되도록 해주시고, 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력해주세요. 결과는 회원 ID를 기준으로 내림차순 정렬해주세요.

SELECT u.USER_ID, u.NICKNAME,
CONCAT(u.CITY, ' ', u.STREET_ADDRESS1, ' ', u.STREET_ADDRESS2) AS 전체주소,
CONCAT(LEFT(u.TLNO, 3), '-', MID(u.TLNO, 4, 4), '-', RIGHT(u.TLNO, 4)) AS 전화번호
FROM USED_GOODS_BOARD b
INNER JOIN USED_GOODS_USER u
ON b.WRITER_ID = u.USER_ID
GROUP BY u.USER_ID
HAVING COUNT(*)>=3
ORDER BY u.USER_ID DESC;