김근희 작성 
1) 로그인 페이지 
2) 관리자 대쉬보드 : 매뉴 사이드바(top, left) + 컨탠츠(각 팀원 페이지)로 구성  

관리자 페이지 섭도메인(subdomain) 주소 -->> 마켓컬리 기준으로... 
1	회원가입	/shop/member/join	
2	로그인	/shop/member/login	
3	아이디찾기	/shop/member/find_id	
4	비밀번호찾기	/shop/member/find_pwd	
5	관리자로그인	/shop/admin/login	관리자 로그인페이지
6	관리자대쉬보드	/shop/admin/home	로그인후
7	회원전체조회	/shop/admin/member	
8	블랙컨슈머조회	/shop/admin/member/blackConsumer	회원들 중 블랙컨슈머 
9	블랙컨슈머해제	블랙컨슈머조회에서 구매자ID 선택 후 btn 으로 처리	id=userId 
10	리뷰전체조회	/shop/admin/review	
11	리뷰상세조회	/shop/admin/review/detail/seq_no --> #1001 	
12	레시피전체조회	/shop/admin/recipe	
13	레시피상세조회	/shop/admin/recipe/detail/seq_no --> #1001 	
14	신고내역조회	/shop/admin/review/detail/#report	class=report 
15	신고누적수조회	신고내역조회에서 같이 확인	class=reportCount 
16	블랙컨슈머처리	신고내역조회에서 구매자ID 선택 후 btn으로 처리	id=userId 
17	리뷰블라인드처리	신고내역조회에서 btn으로 처리	 seq_no