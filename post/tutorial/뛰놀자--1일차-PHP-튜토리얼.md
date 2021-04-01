# 1일차 PHP 문법 정리

## 참고자료 : [php  배열 빌트인 함수](https://www.php.net/manual-lookup.php?pattern=array+func&scope=quickref)

## 보완 사항
- ~html 구문 사이에 <?=  ?> 라는 식으로 접근 가능 하나 추가적으로 확인해야함~
- php 기본 태그는 총 3종류
```php
<?php //standard tag 기본 태그 사용 추천
<? // short open tag xml 태그와 중첩되기 때문에 5.3버전 부터 default 지원 안함 ini에서 on 할 수 있음
<?= // echo shortcut tag 세미 콜론 생략 가능 , list 출력 지원 안함, arg 형태여야 하는 듯
?> // end tag 모든 태그에서 사용
```

## 문법
- php 문법은 전반적으로 C++ 9 버전과 흡사
- 변수 작성 시 $ 필수 
- 당연히 ; 필수
- array 정의 시 대괄호가 아닌 () 사용
-  " . " 라는 연산자로 문자열 concatenate가능


## 함수
- scandir('경로명 / 폴더명')을 통해 경로 내 파일명 가져 올수 있음
- Dynamic list는 $list_ = array(); 와 같이 선언 
- nl2br 하는 함수를 통해 문자열의 줄바꿈을 br 태그 없이 구현 가능
```php
<?php  
$str =abc
efg;
echo nl2br(%str); // abc<br>efg
  ?>
```

