
--1. 서울지역에서 가이드를 구하는 사람들의 글을 모두 출력

select * from BOARD where REGION = '서울' and BOARD_TYPE = 10;

--2. 가연이 쓴 글을 모두 출력

select * from BOARD where WRITER = 'parkgy22@gmail.com';

--3. 투어리스트를 구하는 글을 모두 출력

select * from BOARD where BOARD_TYPE = 20;

--4. 글번호 8번에 달린 댓글을 모두 출력

select * from MY_COMMENT where BOARD_NO = 8;

--5. 토르가 좋아요 한 글들의 글쓴이 아이디를 모두 출력

select * from FAVORITE where EMAIL = 'thorGood@gmail.com';

--6. 주광이랑 함께 동행하여 일기를 남긴 사람들의 아이디를 모두 출력

select * from TOUR_DIARY where COMPANY = 'jookwang88@hanmail.com';

--7. 가연이 일기에서 태그를 건 사람들의 아이디를 모두 출력

select * from TOUR_DIARY where WRITER = 'parkgy22@gmail.com';

--8. 가연이 사용 가능한 언어를 모두 출력

select * from USE_LANG where EMAIL = 'parkgy22@gmail.com';

--9. 9월 6일 이후 날짜부터 투어리스트를 구하는 사람들의 글을 모두 출력

select * from BOARD where START_DATE >= '2018-09-06' and BOARD_TYPE = 20;

--10. 인천에서 여행한 사람들이 남긴 일기를 모두 출력

select * from TOUR_DIARY where REGION = '인천';

--11. 글 제목이나 내용에 '명동'이 들어가는 일기를 모두 출력 

select * from TOUR_DIARY where TITLE like '%명동%' or DIARY_CONTENT like '%명동%';


-- 주광 
--1. 9월 1일 부터 5일사이에 여행 가이드 해주실분 찾기
select * from board where board_type=10 and start_date>='2018/9/1' and end_date<='2018/9/5';

--2. 인천여행 투어리스트 찾기
select * from board where board_type=20 and start_date>sysdate and region='인천' order by write_date desc;

--3.  eogh0000@naver.com 의 사용가능한 언어 확인하기
select lang from lang natural join use_lang where email = 'eogh0000@naver.com'; 

--4. thorGood@gmail.com 가 댓글남긴 게시판 목록 보기
select * from board where board_no in (select board_no from my_comment where writer = 'thorGood@gmail.com'); 

--5. twocomsdev@gmail.com 좋아요 목록 보기
select * from board where board_no in (select board_no from favorite where email = 'twocomsdev@gmail.com');  

--6. jookwang88@hanmail.com 와 함께 여행 했던 투어리스트의 일기 보기
select * from tour_diary where company = 'jookwang88@hanmail.com';  

--7. 영어가 가능한 가이드 확인하기
select * from board where board_type = 10 and writer in (select email from use_lang where lang_no = 14); 

--8. parkgy22@gmail.com 의 좋아요 목록중에서 아직 날짜가 안지난 목록 확인하기
select * from board where start_date>=sysdate and board_no in (select board_no from favorite where email = 'parkgy22@gmail.com');  

--9. 9월 5일에서 12일 사이에 서울 가이드 해주실분 찾기
select * from board where board_type=10 and region='서울' and start_date>='2018/9/5' and end_date='2018/9/12'; 

--10.  가장 관심이 많은 글
select board_no from ( select board_no, count(*) cnt, rank() over(order by count(*) desc) rang from favorite group by board_no) where rang = 1;

--동진

--1. 이메일이 parkgy22@gmail.com인 회원의 가이드 게시판 글을 출력
select * from BOARD 
where BOARD_TYPE = 10 
AND WRITER = 'parkgy22@gmail.com';

--2. 이메일이 twocomsdev@gmail.com인 회원의 가이드 게시판의 쓴 글에
	있는 댓글 모두 출력
select COMMENT_CONTENT from MY_COMMENT 
where BOARD_NO IN 
(select BOARD_NO from BOARD 
where WRITER = 'twocomsdev@gmail.com');

--3. 투어 지역이 서울인 가이드 리스트를 시작일이 빠른 순으로 출력
select WRITER from BOARD 
where BOARD_TYPE = 10 
and REGION = '서울' 
order by START_DATE;

--4. 투어 시간이 4시간 미만인 투어의 모든 정보를 출력

--5. 투어가이드 리스트 중 '피씨방' 단어가 들어간 컨텐츠의 모든 정보 출력
select * from BOARD
where BOARD_CONTENT LIKE '%피씨방%';

--1. 투어 시작일이 2018-09-03 이후인 게시글의 제목을 시작일이 빠른 순으로 출력
select TITLE from BOARD
where BOARD_TYPE = 20 and START_DATE > '2018-09-03'
order by START_DATE;

--2. 이메일이 jookwang88@hanmail.com인 회원의 투어리스트 게시판에 쓴 글의 투어 시간을 출력
select TOUR_TIME from BOARD
where BOARD_TYPE = 20
and WRITER = 'jookwang88@hanmail.com';

--3. 투어리스트 게시판에 2018-07-15에 올라온 글의 제목들을 모두 출력
select TITLE from BOARD
where BOARD_TYPE = 20
and WRITE_DATE like '18/07/15';

--4. 투어리스트 게시글 제목에 '가이드'란 단어가 들어간 글의 지역들을 출력
select REGION from BOARD
where BOARD_TYPE = 20
and TITLE like '%가이드%';


--5. 투어시간이 5시간 미만인 게시글의 회원 이메일과 지역을 출력
