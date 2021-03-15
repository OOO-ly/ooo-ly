# 코드 분리

## 달성 목록
- sign up, sign in 기능 구현
- 하나의 모달에 로그인, 회원가입 버튼에 따라 출력( 코드 분리 필요) (이벤트 리스너 활용)
- modal 스크롤 문제, css 수정
- session['flag']를 통한 로그인,회원가입 등의 alert 처리
- 회사소개 페이지 일부 구현
- md preview enhance 플러그인으로 side preview 사용중
- 경로문제 __dir__ 절대 경로 상수로 상당수 해결
- meta 태그 수정을 통한 확대방지는  safari 10.0 이상은 지원 하지 않음
-

##  보완사항
- board
    - board 에서  create 구현 필요 ( 회원 처리 선행 필요)
    - board detail의 modify, delete 기능 구현
    - modify의 경우 페이지 내에서 
    - delete의 경우 modal을 통해
    - ~~게시글 출력 (read_articel / write_articel) 함수 분리 필요~~
    - read_article에서 title, author 등 유효성 검사해서 없으면 출력하지 않게 구현 - 2 
- author
    - ~~login modal을 통해 process 해야함.~~
    - root, guest , member 로 분류해야함
    - 기본적으로 guest로 db 접속
    - ~~로그인은 modal로 구현~~
    - root 로그인 시 전체 회원 정보
    - member 로그인 시 본인 회원정보
    - root는 전체 회원정보 조회,수정,삭제 가능
    - member 회원정보 create, modify, delete는 index.php 에서 modal로  
    - delete 시 비밀번호 검사
    - 정보를 받을때 format 사용 검토
- page 
    - ~~회사 소개 페이지 구현 필요~~
    - contact 페이지 google api / kakao map / naver api 연동 필요 시간이 허락하는 한 전부
    - 회사 소개 페이지의 인터렉티브 요소 추가
- css
    - article 안에 block으로 정렬되어있는 content를 중앙정렬하는 css가 필요
    - ~~login modal이 스크롤 시 height 100% 이상 넘어가면 overlay가 적용되지 않음~~
- 개발환경
    - ~~md side preview 확인 필요~~


