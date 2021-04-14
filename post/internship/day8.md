
# Day  8 git 드디어 완료 / 비동기


2021년 4월 12일

## 멤버별 현황
 - o3 
 
       1. git  

       - gitlab 기능 습득 및 권한 설정 및 설정 문제 수정 완료
       - ssh 비밀번호 (공개키 적용) 문제 : hold
       - 최종 http 프로토콜로 접속 후 gitlab으로 접속
       - 서비스 서버 -> git 서버 업로드 / 서비스 서버(각 루트 폴더)에서 배포 중 


       2. 기능 구현 목록

       -[ ] 댓글 (생성 수정 삭제 / depth 이용)
       -[ ] 게시글 조회 카운트
       -[ ] 검색
       -[ ] 파일 업로드
       -[ ] select box 비동기 : 진행중
       -[ ] 체크박스 의 따른 삭제
       -[ ] 비동기 페이징 


 - sumi : 

       - [ ]  게시판 ver1 부트스트랩 적용 (게시글, 글수정)
       - [x]  게시판 ver1 조회수 카운트 기능 추가
       - [x]  게시판 ver1 검색 후 리스트로 돌아가기 기능 추가

       - [x]  게시판 ver1 부트스트랩 적용  → 게시글만 남음
       - [ ]  게시판 ver1 조회수 카운트 기능 추가
       - [x]  게시판 ver1 검색 기능 추가

 - dh :

       - [x]  댓글 기능 추가 (리스트)
       - [x]  댓글 기능 추가 (등록,수정, 삭제)
       - [ ]  코드 정리하기
       - [ ]  검색을 한 페이지에 보여주는 방법
       - [x]  게시글 조회수

## 인턴십 계획

- 게시판 프로젝트를 3개월 진행 / 격주로 습득한 것을 복습하는 것으로 프로젝트 진행 예정
- 야놀자, 여기어때,트립비토즈 등의 호텔 예약 플랫폼의 기능, 프로모션 등의 레퍼런스를 참조하여 기획, 구현 예정


## 원격 접속 작업 ( gitlab )


- git을 활용한 테스트 환경 1차 완료

       1. 회사 서버에 ssh로 접속 
       2. 해당 프로젝트에 반영될 깃 계정정보 정의
              git config --global user.name "본인이름"
              git config --global user.email "본인 email"
       3. 해당 프로젝트에서 터미널 접속 이후 아래와 같이 작업
              git init
              //기존 ssh 접속이 아닌 http로 접속
              git remote add origin "http://git.ttinolja.com:8000/{gitlab id 혹은 group 명}/{프로젝트 명}
              git add . 
              git commit -m "init"
              git push -u origin master
       4. 그 외 작업중인 IDE 혹은 소스에 맞게 조정
              
- SSH 접속 시 gitlab에서의 권한받는 것이 문제가 됨
- 서버에서 설정이 필요하나 각 개인별로 계정을 만들어야하는 문제가 있을 수 있음
- 현재 해당 도메인에 가입하는 것이 root의 허가가 필요하고 git 서버의 경우 백업으로만 사용하고 있어 서비스에는 문제가 없을 것으로 보임
- ssh 접속 시 공개키를 통한 바로 접속, 커밋 시 gitlab 계정정보 입력 등의 문제가 있으나 일단 1차 여기서 마무리
- 본래는 git 서버에서 DevOpt 설정을 통해 커밋 시 쿠버네티스를 통해배포를 진행해야하나 현재 환경 상이러한 구조를 가지게됨.

## 기능구현

- ajax를 통한 비동기 구현 중
- 현재 ajax 쪽에서 보낸 json은 가져와 view에서 렌더까진 성공
- select > option의 값을 가져와 다음 select option 렌더를 구현해야함.