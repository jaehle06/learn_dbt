-- - fct_reviews 테이블의 review_date(리뷰 작성일)가 해당 리뷰가 연결된 dim_listings_cleansed 테이블의 created_at(숙소 생성일)보다 이전이 아니어야 한다.
-- - 즉, 숙소가 생성되기도 전에 리뷰가 달리면 안 된다**는 **논리적인 무결성(consistent logic)** 검증입니다.
-- 	이 쿼리가 0건의 결과만 반환하면 통과이고, 1건 이상이면 테스트 실패입니다.



SELECT * 
FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
USING (listing_id)
WHERE l.created_at >= r.review_date