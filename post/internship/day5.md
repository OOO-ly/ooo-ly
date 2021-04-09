
# Day  5 서버에서 php 게시판 제작 - 잠시 비동기 + git


2021년 4월 7일
## 멤버별 현황
 - o3 : 페이징, select 박스를 통한 페이지 렌더 등을 위해 비동기 필요성 다시 느낌 / 게시판 CRUD 생성, 수정, 읽기 구현 했으나 스타일 등의 이유로 수정 중
 - sumi : 게시판 CRUD 구현 완료 추가 기능 구상 중 (호텔 리스트 CRUD 추가, 댓글)
 - dh :  게시판 CRUD 구현 완료 구상 중(검색, 스타일 적용)

## 인턴십 계획

- 게시판 만들기 (강의는 예제를 기반한 자유 창작)
- 가상의 회사 소개 페이지 구현 **(게시판 프로젝트 완료 후 일정 미정)**
- ~~최종적으로 demo.ttinolja.com 리뉴얼로 마무리~~ 현재 이후 일정 미정


## 원격 접속 작업

- o3 : ssh로 변경하여 작업 시작
- sumi : ssh로 변경하여 작업 시작
- dh :ftp 설정 고정으로 작업 지속 -> ssh로 변경 예정

- git의 대한 필요성 대두 되었고 강대전 이사님 통해 최종 승인 테스트를 통해 실무도입 또한 고려
- gitlab, github 등 git 솔루션 고민중 


## 게시판 제작 ( 그누보드 함수 이용 )

- CRUD 제작이 완료 되었으나 소스 가독성을 고려하지 않고 제작하여 리팩토링이 매우 필요한 상태
- 리팩토링 진행 중 create 구조를 변경해야 했고 전반적이 수정이 불가피하여 수정함
- 비동기를 통해 기존 기능들 개선 가능 할 것으로 보임 (수정 버튼, work_flag를 통한 컨트롤, 삭제 비밀번호 요청, selectbox )

- [ajax사용을 위해 JQuery 습득 진행](https://api.jquery.com/jquery.ajax/)


```javascript

// $.ajax는 옵션에 따라 렌더, 쿼리 요청 둘다 가능하지만 보통 ajax는 json 요청을 하는것으로 쓰는 듯하다 
//여기서 말하는 서버는 말그대로 데이터를 요청할 서버다 특정 페이지가 될 수 있고 쿼리 실행 control소스가 될 수 있다.

    $.ajax({ 
    url :"데이터를 가져오거나 렌더를 요청할 서버 url"
    data : {author : "첫게시자"} //서버(URL)에 전달할 데이터 
    type: "POST" // HTTP METHOD 보안 등을 고려해 사용하면된다. 비동기 이므로 URL이 변경될지는 테스트 필요
    datatype :"json" //서버에서 받을 데이터의 타입

    //데이터를 받았는지 여부에 따라 state를 확인 할 수있다.  각 스테이트는 콜백을 인자로 받아 해당 state일 때 해당 메소드를 실행한다.
    .done(function(){ // 서버에서 성공적으로 데이터를 받음
    //선택할 수 있는 element 형태는 id, class tag 등이 있고 각각 "#id", ".class", "a" 로 표기
    $("#acticle_title").text(json.title).appendTo(".board");
    $("<div class=\"content\">").html(json.html).appendTo("body");
    })

    // HTTP 요청이 실패하면 오류와 상태에 관한 정보가 fail() 메소드로 전달됨.
    .fail(function(xhr, status, errorThrown) {
    $("#text").html("오류가 발생했습니다.<br>")
    .append("오류명: " + errorThrown + "<br>")
    .append("상태: " + status);
    })

    // HTTP 요청이 성공하거나 실패하는 것에 상관없이 언제나 always() 메소드가 실행됨.
    .always(function(xhr, status) {
    $("#text").html("요청이 완료되었습니다!");

    })


})


```