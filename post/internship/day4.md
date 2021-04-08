# Day  4 서버에서 php 게시판 제작

2021년 4월 6일

## 멤버별 현황
 - o3 : 비동기 잠시 보류 / 게시판 CRUD 구현
 - sumi : 게시판 CRUD 구현 중
 - dh :  게시판 CRUD 구현 중

## 인턴십 계획
- 2시까지 고재찬 팀장님 소스를 기준으로 클로닝 진행 및 테이블 생성
- 각자 어려워하는 부분을 기준으로 롤을 나눠 추가작업 진행 예정
- ~~php mysql 기반 튜토리얼 진행~~
- 게시판 만들기 (강의는 예제를 기반한 자유 창작)
- 가상의 회사 소개 페이지 구현 **(게시판 프로젝트 완료 후 일정 미정)**
- ~~최종적으로 demo.ttinolja.com 리뉴얼로 마무리~~ 현재 이후 일정 미정


## 원격 접속 작업

- o3 : ssh로 변경하여 작업 시작
- sumi : ssh로 변경하여 작업 시작
- dh :ftp 설정 고정으로 작업 지속 -> ssh로 변경 예정

## 게시판 제작 ( 그누보드 함수 이용 )

- 기존 mysql_query , mysql_fetch_array 등을 대치하는 함수 사용 (sql_query, mysql_query-array)
- 각각 함수는 lib/common.lib.php에 정의 되어있으며 빌트인과 달리 connect info를 conmmon.php에서 db정보를 받으며 db접속 정보는 /data/dbconfig.php에 있다(dbconfig.php는 보안상 매우 위험한 파일이므로 버전 관리 시 반드시 .gitignore등에 추가하여 공개되는 일이 없도록하자)
- ex_list 등에 비동기 구현 진행