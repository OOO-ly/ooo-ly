
# Day  11 select box의 늪


2021년 4월 15일

## 멤버별 현황
 - o3 

       -[ ] 댓글 (생성 수정 삭제 / depth 이용)
       -[ ] 게시글 조회 카운트
       -[ ] 검색
       -[ ] 파일 업로드
       -[ ] select box 비동기 : 진행 중.......................
       -[ ] 체크박스 의 따른 삭제
       -[ ] 비동기 페이징 : 진행 중
       - 기존 소스를 불러옴 ( 회원가입, 삭제, 회원 관리 및 권한 별 기능 ,카카오 map api )

 - sumi : 

      - 게시판 ver1
      - [x]  이미지 업로드  → 권한 문제
      - [ ]  로그인 / 회원가입 css
      - [x]  alert/페이지이동 Q  → location.href
      - [x]  관리자 로그인 시 수정/삭제 권한 주기 → _common.php에 저장
      - [x]  삭제 시 경고창으로 확인 → confirm함수

 - dh :


      - [ ]  CSS (create, update)
      - [x]  게시글, 댓글 수정 한페이지로 정리하기
      - [ ]  댓글수, 게시글 수 표시하기
      - [ ]  업데이트 시 업데이트 표시 달아주기
      - [ ]  조회수(캐시,세션)
            

## 인턴십 계획

- 게시판 프로젝트를 3개월 진행 / 격주로 습득한 것을 복습하는 것으로 프로젝트 진행 예정
- 협업을 목표로 한 프로젝트 진행 예정
- 야놀자, 여기어때,트립비토즈 등의 호텔 예약 플랫폼의 기능, 프로모션 등의 레퍼런스를 참조하여 기획, 구현 예정


## 기능구현

- jquery를 이용한 비동기 기능 구현 중 (리스트 박스) 

```javascript

                     // 정규식을 이용한 생성된 ID의 idx 숫자 가져오기
                    let regex = /[^0-9]/g;
                    let test = this.getAttribute('id'); // 미리 생서된 해당 orw의 id 정규식을 통해 리플레이스 
                    let result = test.replace(regex, "");


```

- 값을 초기화하고 불러오는 것은 php로  그 외에 반드시 비동기를 사용해야 코드가 간단해지는 부분을 판단하면서 작업할 필요가 있음 오히려 비동기를 사용함으로써 코드가 복잡해지고 어려워지는 경우가 발생할 수 있음 ( Ex 회원정보 리스트 초기값, 수정 페이지 초기값 등)
