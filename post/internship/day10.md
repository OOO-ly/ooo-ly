
# Day  10 비동기


2021년 4월 14일

## 멤버별 현황
 - o3 

       -[ ] 댓글 (생성 수정 삭제 / depth 이용)
       -[ ] 게시글 조회 카운트
       -[ ] 검색
       -[ ] 파일 업로드
       -[ ] select box 비동기 : 진행 중.......................
       -[ ] 체크박스 의 따른 삭제
       -[ ] 비동기 페이징 : 진행 중


 - sumi : 

        - [x]  게시판 ver1 유저 회원가입
        - [x]  게시판 ver1 유저 로그인
        - [ ]  게시판 ver1 이미지 업로드

        - 게시판 ver1 유저 설정
        - [x]  로그인 시 로그인/회원가입 버튼 → 로그아웃 버튼으로 바꿔줌
        - [x]  로그인 시에만 글쓰기 허용
        - [x]  게시글 생성 시 작성자 데이터 자동 저장 → user 테이블의 id 저장
        - [x]  게시글 불러올 때 writer = 작성자 user 테이블의 nickname으로 불러옴
        - [x]  로그인 시에만 댓글쓰기 허용  → disabled 수정 필요(alert 뜨게)
        - [ ]  작성자 본인이 쓴 경우에만 게시글 수정/삭제 허용
        - [ ]  작성자 본인이 쓴 경우에만 댓글 수정/삭제 허용
        - [x]  프로필 있을 경우 프로필 사진 바꾸기 있을 경우 프로필 사진 바꾸기

 - dh :


        - [x]  댓글 기능 마무리
        - [ ]  조회수 (캐시,세션)
        - [x]  코드 정리
        - [x]  CSS 추가 (index, board_view)
        - [x]  검색기능 추가
       

## 인턴십 계획

- 게시판 프로젝트를 3개월 진행 / 격주로 습득한 것을 복습하는 것으로 프로젝트 진행 예정
- 야놀자, 여기어때,트립비토즈 등의 호텔 예약 플랫폼의 기능, 프로모션 등의 레퍼런스를 참조하여 기획, 구현 예정


## 기능구현

- jquery를 이용한 비동기 기능 구현 중 (리스트 박스) 

```javascript

      $("select[name='city_cd']").change(function(){

    let city_cd = this.value;

    let option_idx = this.selectedIndex;

    let parent_row = this.parentNode.parentNode;
    let parent_row_idx = parent_row.rowIndex*2-1;

    let sel = document.querySelectorAll('select');
    
    
    console.log(parent_row_idx);



    $.ajax({
            type: "POST",
            url: "../ajax/ajax_list.php",
            data: {
                table : "city_code",
                 select_city_cd : city_cd
            },
            dataType: "json"
        })
        .done(function(data){
            
            if(data != 'empty'){
                $.each(data, function(key, val){
                    
                    
                });
            }
        })
        .fail(function(data){
            alert("제송합니다. ajax_파일을 봐주세염 ㅇㅇ...");
        })



})

</script>

```
- 값을 가져오고 핸들링하는 것은 문제 없으나 table row를 index를 움직이는 과정에서 parentNode ,  rowIndex 등의 기능을 사용하게됨
