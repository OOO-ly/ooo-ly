# Day  2 계획 정식 수립

## 멤버별 현황
 - o3 : js, 비동기 구현 습득 중
 - sumi : 환경설정 및 php 튜토리얼
 - dh : 환경설정 및 php 튜토리얼

## 인턴십 계획

- php mysql 기반 튜토리얼 진행
- **ftp 서버 상에 각각 그누보드 영카트 설치**
- **게시판 만들기**
- 가상의 회사 소개 페이지 구현 **(팀프로젝트)**
- ~최종적으로 demo.ttinolja.com 리뉴얼로 마무리~



## ftp 접속

- [VS CODE ftp-simple 플러그인을 통한 소스접근](https://www.manualfactory.net/10964)
- [SQLyog를 통합 DB 접속](https://offbyone.tistory.com/28)
- 기존 있던 데이터는 삭제 되었고 그누보드 영카트 설치부터 진행 예정
- ftp-simple 접속 및 저장 삭제 등의 컨트롤 숙지 필요


## JS 
- hoisting은 객체,함수의 선언부를 parser가 최상단으로 올려주는 일련의 작업을 의미
- var 선언의 경우 전역으로 선언됨,다중 선언이 가능하기 떄문에 에러를 야기할 수 있음
- var 선언의 경우 초기화하지 않으면 "undefined"로 초기화됨 메모리 누수 우려있음
- let,const는 블록 단위이며 호이스팅 될 때 초기화 되있지 않으면 오류를 뿜을 수 있음 명시적으로 사용하기 용이함

```javascript
//아래와 같이 객체를 선언,추가, 출력할 수 있음
let object = {
            "programmer" : "lee",
            "designer" : "o3"
        };
        // document.write("programmer : "+object.programmer+"<br>");
        // document.write("programmer : "+object.designer+"<br>");
        object.bookeeper = 'sumi';
        // document.write("bookkeeper : "+object.bookeeper+"<br>");
        object["data scientist"] = "kim";
        // document.write("data scientist : "+object["data scientist"]+"<br>");

        object.showAll = function(){
            for(let key in this){
            // console.log(key+" : "+object[key]);
            document.write(key+" : "+this[key]+"<br>");
            }
        }

```

## php

```php

//아래와 같이 다중 배열을 만들고 접근하거나 출력할 수 있음
$fruits = array (
    "fruits"  => array("a" => "orange", "b" => "banana", "c" => "apple"),
    "numbers" => array(1, 2, 3, 4, 5, 6),
    "holes"   => array("first", 5 => "second", "third")
);

foreach($fruits as $key_x => $value_)
{ 
    foreach($value_ as $key_y => $value)
    {
        echo "fruits[".$key_x."][".$key_y."] = ".$value."<br>";
    }
}

print_r($fruits);

var_export($fruits);

```