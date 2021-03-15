# 글 생성, 글 수정

##보완사항 
- ~해결된 사항 : echo 로 html 태그가 포함된 구문을 함수화 할시 \"을 통해 attr 구분을 잘해주지 않으면 굉장히 곤란해 질 수있다~
- 빨리 파일 분리를 배워야한다. 코드가 지저분해져간다..

## redirection
- header('Location: "path"'.$_POST['title]); 등으로 해당하는 페이지로 돌아갈 수 있다. 생성, 갱신, 삭제 시 활용 가능한 기능 


## 생성

- $_GET은 URL 으로 액션을 취하면 URL이 생성되어 생성,갱신, 삭제 등에는 적합하지 않을 수 있으니 $_POST로 전달해야함
- form 태그의 기본적인 method는 GET이므로 C U D 제작 시 POST로 변경이 필요로 된다. 
- placeholder 를 통해 "제목을 입력하세요" 등의 기본 구문 작성 가능
-file_put_contents("현재 파일 주소(파일명)",해당 파일에 들어갈 콘텐츠) 로 글 생성 활용 가능
## 갱신 

-  기존의 id 등이 필요할 땐 process로 넘기기전 hidden을 통해 기본의 id 등의 값을 보내서 처리해야한다. 
```php
<input type="hidden" name="old_id" value"<?=$_GET['id']?>">
```
- 수정 시 기존 값을 불러오기 위해서 input 태그의 경우 value attr을 사용, textarea의 경우 태그 사이에 값을 정의 
```php
  <p>
            <input type="text" name="title" placeholder="Title" value="<?php print_title();?>">
        </p>
        <p>
            <textarea name="description"><?php description_print();?></textarea>
        </p>

```
- rename 함수는 상술한 hidden 한 이전의 id값과 현재 변경될 값을 통해 파일명을 변경하기 용이하 built in func 이다.
