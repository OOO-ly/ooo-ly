# MySQL 연동을 통해 file 기반에서 벗어나기

## 보완사항 
- MySQL 값을 가져오는 mysqli_query / mysqli_num_rows / mysqli_fetch_assoc 를 사용해서 테스타 할 필요 있음
- 테이블의 값만 접근 해야하는 경우가 있음 (ex redirect 시 게시물의 id를 받아서 이동하는 것으로 구현 예정)
- MySQL 관련 함수 추가 적인 연습 필요
- **추가 submit이 중복되게 전달되는 문제 해결 필요**
- **추가 세션의 대한 확인 필요**


## MySQL
- 서비스 시 로그는 절대 유저에게 보이지 않도록 예외처리에 신경써야함 
```php
if ($result == false){
    echo '저장하는 과정에서 문제가 생겼습니다. 관리자에게 문의해주세요';
    error_log(mysqli_error($conn));
   
} else {
    echo '성공했습니다. <a href="index.php">돌아가기</a>';
}
```
- mysqli_connect 사용 시 반드시 수정용 계정 생성 후 사용**(root 계정 사용 금지, 비밀번호 상수로 넣는거 금지 최대한 소스에 정보 공개 금지)**
- 테이블이 필드가 많다면 limit # 을 이용해 로드하는 필드 수를 줄이자


## php
- defalut string 은 상수로 정의하고 isset에서 특정 조건 만족 시(ex id가 있다면) 변환하는 방향이 소스를 간결화함

## 보안
- SQL_INJECTION을 막기 위해 mysqli_real_escape_string($sql 접속정보, $사용자 정의 정보)를 사용
- cross site scripting 을 막기 위해 htmlspecialchars( 사용자 정의 데이터) 를 이용해 넘어온 값을 문자열로 바꿀 필요있음 
- 사용자가 입력할 수 있을 것으로 판단되는 모든 값은 htmlspecialchars으로 처리하는것이 좋음
- PK인 id 같은 경우 settype($변수, "타입") 로 캐스팅하여 다른 값이 넘어오는 것을 방지


