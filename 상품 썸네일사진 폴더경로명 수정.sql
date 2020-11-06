-- 상품테이블 썸네일이미지 경로수정하기
UPDATE PRODUCT
SET P_THUMBNAIL = 'resources/product_upfiles/' || SUBSTR(P_THUMBNAIL,29);
commit;