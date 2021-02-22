# contenteditable 이용한 create 구현 / a href -> form post 이전

## 달성 목록
- contenteditable 을 attr을 이용한 create 구현 중 
- session의 user-id 검사를 통한 권한 설정. 
- create control 구현중
- article 안의 content 들을 position : relective 를 적용해 화면크기에 비례에 align 이 깨지는 문제 해결 
- 로그인 시 id, pw 경우 일부 정규식 적용함 / 그에 맞춰 테이블 id(lower) 적용


##  보완사항
- board
    - contenteditable 사용 시 mysqli_real_escape_string / htmlspecialchars 을 태그 수정을 통한 보안 이슈를 최소화 해야함
    - board 에서  create 구현 필요 ( 회원 처리 선행 필요)
    - board detail의 modify, delete 기능 구현
    - modify의 경우 페이지 내에서 
    - delete의 경우 modal을 통해
    - read_article에서 title, author 등 유효성 검사해서 없으면 출력하지 않게 구현 - 2 
- author
    - root, guest , member 로 분류해야함
    - 기본적으로 guest로 db 접속
    - root 로그인 시 전체 회원 정보
    - member 로그인 시 본인 회원정보
    - root는 전체 회원정보 조회,수정,삭제 가능
    - member 회원정보 create, modify, delete는 index.php 에서 modal로  
    - delete 시 비밀번호 검사
    - ~~정보를 받을때 format 사용 검토 ( 정규화 )~~
- page 
    - contact 페이지 google api / kakao map / naver api 연동 필요 시간이 허락하는 한 전부
    - 회사 소개 페이지의 인터렉티브 요소 추가
- css
    - ~~article 안에 block으로 정렬되어있는 content를 중앙정렬하는 css가 필요~~


