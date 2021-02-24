# live server on php

## php를 live server 플러그인으로 새로고침 없이 돌리기 위한 삽질

- https://github.com/ritwickdey/live-server-web-extension

- https://chrome.google.com/webstore/detail/live-server-web-extension/fiegdmejfepffgpnejdinekhfieaogmj/


- 기본 조건 : 
  - 크롬을 사용할 것
  - Live Server Web Extension (on chrome) 설치
  - live server 플러그인 설치 (on vscode)
  - wamp 등의 현재 사용하는 기기에 서버 환경 만듬
  -스크린샷을 참조
  ![howtoLiveserver_php](https://github.com/ritwickdey/live-server-web-extension/blob/master/img/screenshots/direct-setup.png?raw=true)
  - Actual Server Address: wamp 등에서 사용하는 주소와 포트번호 ( http://localhost:80)
  - Live Server Address : live server에서 사용하는 주소 와 포트번호( http://localhost:5500)
  - vscode에서 go-live 버튼으로 live server 실행
  - 브라우저에서 live server 주소로 접속
P

- 프록시 설정
```json
 {
    // Mainly for static files
    "liveServer.settings.useWebExt": true,

    // This means that you change your real URL (current PHP url) 
    // to another URL (which Live Sever starts).
    "liveServer.settings.proxy": {
        //wamp 등의 서버를 사용하고 있다면 true 
        // html를 바로 여는 등의 서버가 없는 환경이라면 false
        "enable": true,                             //   i. enabled
        "baseUri": "/",                             //  ii. workspace
        //여기서 workspace란 경로를 의미하는데
        //프로젝트 전체를 돌려보고싶다면
        //포트번호까지만 써도됨
        "proxyUri": "http://localhost:80/workspace" // iii. actual address
    },
}
```

  - 위 내용을 settings.json 에 추가하여 프록시 설정 가능함
  - 