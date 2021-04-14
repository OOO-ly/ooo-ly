
# Day  9 비동기


2021년 4월 13일

## 멤버별 현황
 - o3 

       -[ ] 댓글 (생성 수정 삭제 / depth 이용)
       -[ ] 게시글 조회 카운트
       -[ ] 검색
       -[ ] 파일 업로드
       -[ ] select box 비동기 : 진행 중
       -[ ] 체크박스 의 따른 삭제
       -[ ] 비동기 페이징 : 진행 중


 - sumi : 

            - [x]  게시판 ver1 게시글 css
            - [x]  게시판 ver1 조회수 카운트 기능 추가  → 중복 방지 ok (cookie)
            - [x]  게시판 ver1 댓글 update 부분 한 페이지로 수정
            - [x]  게시판 ver1 글자 수 제한
            - [x]  게시판 ver1 유저 테이블 생성
            - [ ]  게시판 ver1 유저 CRUD 추가

 - dh :


            - 구조 수정을 위한 코드 리팩토링
            - 경로 정리 작업

            - [ ]  수정 눌렀을 때 선택한 것만 수정하게 만들어보기
            - [ ]  업데이트 시간 넣기
            - [ ]  검색을 한 페이지에 보여주는 방법
            - [ ]  코드 정리하기
            - [ ]  페이징에 대해 알아보기
       

## 인턴십 계획

- 게시판 프로젝트를 3개월 진행 / 격주로 습득한 것을 복습하는 것으로 프로젝트 진행 예정
- 야놀자, 여기어때,트립비토즈 등의 호텔 예약 플랫폼의 기능, 프로모션 등의 레퍼런스를 참조하여 기획, 구현 예정

## git 

- g5, yc5 data 폴더의 경우 .gitignore에 추가하여야 권한문제가 발생하지 않음
- .gitignore에 추가하기 전 push 한 private 폴더 및 숨겨져야할 파일이 repo에 반영될 경우 cached를 삭제해야함 
            - git rm -r --cached
      

## 기능구현

- jquery를 이용한 비동기 기능 구현 중 

      ```html


       <script  src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script> 

       // jquery 사용 시 추가해야하는 이 코드는 g5  / yc5의 common.php에 추가하면 오류를 낸다. 가급적이면 현재 구동해야하는 소스에 추가


      ```
- 받은 파일은 json파일은 객체로 오기 때문에 접근 시 객체를 접근하는 방식으로 접근해야함