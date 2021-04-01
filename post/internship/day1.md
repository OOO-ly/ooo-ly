# Day  1 다시 기획 설정

## 멤버별 현황
 - o3 : js, 비동기 구현 습득 중
 - sumi : 환경설정 및 php 튜토리얼
 - dh : 환경설정 및 php 튜토리얼

## 인턴십 계획

- php mysql 기반 튜토리얼 진행
- 가상의 회사 소개 페이지 구현
- 최종적으로 demo.ttinolja.com 리뉴얼로 마무리


## 그룹웨어

    - 필수 설정
    1. my -> 환경설정 -> 메인화면 -> 개인포털
    2. my -> 환결설정 -> 알림 -> 모든 알림 체크 
    3. 파일함 -> 공유함 -> g-talk 메신저 -> os별 다운로드및 설치

    - 권장 설정 
    1. 게시판 -> 공지사항 /업무요청게시판-> IT사업본부->시스템개발팀 등 게시물 확인
    2. 메일 -> 기능 확인 및 서명 작성

## ftp 접속

- [VS CODE ftp-simple 플러그인을 통한 소스접근](https://www.manualfactory.net/10964)
- [SQLyog를 통합 DB 접속](https://offbyone.tistory.com/28)
- g5_shop_item_kor_hotel 등의 테이블이 있으나 기존의 "demo_mng_ttinolja_co_kr" DB를 참고해 **호텔 리스트를 마이그레이션할 필요가 있어 보임해당 내용 고재찬 팀장님에게 문의 예정**
- 현재 DB 접속 정보는 ftp derectory 기준 data\main_dbconfig.php 에 있음


## CSS
- 태그< 클래스 < 아이디 순으로 지엽적으로 제한적일수록 우선순위가 높음 즉 ID가 제일 높은 우선순위
- 먼저 선언된 순서로 적용됨
## JS 

```javascript
//태그는 abc 아이디는 #abc 클래스는 .abc 식으로 작성
//
document.querySelector('.abc').innerHTML 
documnet.querySelector('#abc').text
//아래와 같이 변수로 만들 수 있으며
var temp = documnet.querySelector('button').value // 이 것이 성립되기 위해선 반드시 value가 사용가능한 태그일 것

fucntion test(self){
    self.value = 'hello';// 이벤트를 트리거로 실행한 이 element를 self로 적용된다
}

```