#map API 연동 (고객지원 페이지 ) , wa인증 추가 작업


##고객 지원 페이지 제작 시작
 - naver map API 연동 하려했으나 NCP 사용하지않으면 키가 나오지않아 실패
 - kakao 제작중 html로 제작되는 프로젝트의 경우 js 키가 아니라 REST key를 받아와야되는 이슈가 있음
 - google 구현 중


 ## kakao map
    - https://apis.map.kakao.com/web/guide/
    - APP KEY 는 REST KEY 사용 
    - latlng 의 경우 map에서 바로 가져올수 없음 getcenter() 등으로 $latlng를 한번 리턴 받은 뒤 getlng 등으로 쪼개서 사용할 필요 있음


## wa 인증

   - 이미지의 대한 alt 메세지 이외에 title을 통한 제목 대체텍스트 , label 등을 통해 스크린리더 등의 접근성을 높일 수 있음
   - 각 언어 별 페이지에는 해당 국가 언어의 메세지만 사용 가능 (대체 텍스트, 콘텐츠 포함)
   - alret 등 중복 사용되는 요소는 특히 주의 필요
