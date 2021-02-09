# 반복문, 배열, 함수 그리고 포맷터
> 반복문,배열,함수 의 심화와 포맷터 활용
## 보완사항
- array bulit in 함수 활용
## iterator
- while,for 는 기본적인 C 스타일을 따라감
- foreach 는 처음 접함 C++ 11에도 있을 것으로 예상됨
```php
<?= foreach($list as $key => $value){ //state }  ?>
```
- 상술된 바와 같이 키와 값으로 나눌 수 있음 (like 딕셔너리)
- expr 은 최종적으로 값이 오는 것 혹은 값이 되는 것 (like return a+b , bool ..)
- statement 는 어떠한 구조식을 의미하는 것으로 이해함 ( like a+b, for(;;){} ..}

## array
- var_dump를 통해 element의 type과 value, size 를 함께 볼 수 있음
- array_push($list,value) , array_pop($list)등이 있음
## function
- parameter(매개변수)는 인자로 받는 변수를 의미 ( like function sum($a, $b) // --> $a, $b )
- argument(전달인자,인자)는 최종적인 value를 의미 ( like sum(1,2) // --> 1 , 2 ) 
- c에서 말하는 argv argc의 경우 v는 pointer array 자체(like param?), c는 element의 수를 의미한다고 함
## formeter
- vscode에서 기본적으로 제공함 preference ->Keyboard shortcut 에서 "formet"이라는 키워드로 확인할 것
- 추가적인 언어 지원은 플러그인 설치 필요할 수 있음
  
