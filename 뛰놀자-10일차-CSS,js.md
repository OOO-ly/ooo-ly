# CSS 하면서 CRUD 구현 with JS

## 달성 목록
- html 소스 분리 JS 기능 구현

    ```html
    
    <script src="../include-html.js"></script>

    ```
- set_include_path를 통한 상대경로 오류 발생 최소화

    ```php
    
    set_include_path(" C:\Users\tnj200##\Documents\php_and_MySQL;");

    ```

- 쿼리에 rand() 와 php 빌트인 함수 rand()가 겹치므로 문자열로 따로 처리해야함
- 함수 정의 시 초기값 설정을 통해 사용 편의성 확보
    ```php
    function new_article_create($conn, $board_name, $limit = 5, $rand = false)
    ```
- css 조건을 통해 js 없이 hover,active,focus 등이 구현됨
    ```css
    form.login_form input:active,
    form.login_form input:focus,
    form.login_form input:hover{
        border-top: 2px solid rgba(62, 48, 228);
    }
    
    ```
- 

##  보완사항
- board
    - board 에서  create 구현 필요 ( 회원 처리 선행 필요)
    - board detail의 modify, delete 기능 구현
    - modify의 경우 페이지 내에서 
    - delete의 경우 modal을 통해
    - 게시글 출력 (read_articel / write_articel) 함수 분리 필요
- author
    - root, guest , member 로 분류해야함
    - 기본적으로 guest로 db 접속
    - 로그인은 modal로 구현
    - root 로그인 시 전체 회원 정보
    - member 로그인 시 본인 회원정보
    - root는 전체 회원정보 조회,수정,삭제 가능
    - member 회원정보 create, modify, delete는 index.php 에서 modal로  
    - delete 시 비밀번호 검사
    - 정보를 받을때 format 사용 검토
- page 
    - 회사 소개 페이지 구현 필요
    - contact 페이지 google api / kakao map / naver api 연동 필요 시간이 허락하는 한 전부
- css
    - article 안에 block으로 정렬되어있는 content를 중앙정렬하는 css가 필요


