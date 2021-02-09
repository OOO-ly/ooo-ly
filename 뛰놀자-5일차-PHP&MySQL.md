# Relation DB 기반 CRUD 제작

## 보완사항
- 02/03 까지 프론트 만들어보기(CRUD 숙지는 끝)
- WAMP를 게시판 제작 필요
- 객체지향 PHP 숙지 필요   / PDO
- INDEX 등의 성능향상 법을 모색해야함
- MVC 모델 등을 통한 코드 분리 등을 모색해야함

## php 
- 함수화 진행 중 DB 접근이 많아질 수록 성능이 저하됨 

## MySQL
- 테이블 접근시 특정 컬럼만 제외한 접근이 어렵다. (값에 의한 접근은 오히려 쉬움)
- 그래서 하기와 같이 테이블 별, 컬럼 별 접근을 명시하는 것이 좋단다...
```php
 select topic.id,topic.title, 
        topic.description, 
        topic.created ,
        topic.author_id,
        author.name,
        author.profile
   from topic 
   left join author 
   on topic.author_id = author.id;
```
- 테이블 별 column명이 같으면 의도와 다르게 다른 테이블의 해당 필드가 날아갈 수 있음 table 작성시 컬럼명을 잘 고려애야함
- delete 와 같이 링크로 움직이면 안되는 민감한 행동은 form method=POST로
