

## form tag 

- 유저에게 무언가 정보를 받고 싶을 때 사용하는 태그
  
  - id, pw 등
  
- attr 가 두가지 있다
   - action="API path" ( like ="./process_create.php")
   - method=GET|POST 
     - GET : 도메인이 출력되도 되는 정보를 백에 넘길 때 사용
     - POST : 도메인이 출력되면 안되는 정보들을 넘길 떄 사용
     - 단  서비스 이용내내 유지되어야하는 id,pw 등의 정보는 세션, 쿠키(토큰) 등을 사용)
  

- 경로에 '#'을 넣으면 현재 페이지로 돌아온다.
