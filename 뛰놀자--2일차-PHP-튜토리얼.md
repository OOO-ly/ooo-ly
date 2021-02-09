# Git 연동 /  bitnami wamp 환경 설정

> bitnami wamp를 이용한 로컬 서비스 테스트 및 로컬 내 다른 컴퓨터에서 접근 

## 관련 자료
- [git-scm](https://git-scm.com/)
- [git-desktop](https://desktop.github.com/)
- [vs code](https://code.visualstudio.com/)
- [bitnami wamp](https://bitnami.com/stack/wamp/installer)
## 보완사항
- git-cli 를 통한 터미널로 git 접근
- mac 에서의 환경 설정 별도로 알아야 함


## Git연동

### vs code 상 유용한 shortcut
- ctrl + shift + p  : 명령창 실행 (명령창에 > 자동으로 타이핑 되어있음)
- (명령창에서) >Git :commit 
- (명령창에서) >Git :push
- (명령창에서) >Git :pull
- (명령창에서) >Git :fatch 

### 유의사항
- 현재 사용 중인 git 관련 플러그인은 gitlens
- vscode로 git 연동 시 stage 시 조심할 것 복구가 어려울 수 있음
- git 로그인이 필요한데 불편하다면 git/desktop을 통한 방법이 될 수 있음

## bitnami wamp 환경설정
- 변경 전 원본 백업 해둘 것
- C:\Bitnami\wampstack-8.0.1-0\apache2\conf\bitnami\bitnami.conf 에서 대상 폴더 경로 변경이 가능함
- 수정할 곳은 <VirtualHost _default_:80>에 DocumentRoot "경로" , <Directory "경로">
- 해당 경로를 원하는 경로로 변경 가능(git repo인 local folder로 함)
- C:\Bitnami\wampstack-8.0.1-0\php\php.ini 에서 테스트 시 유용한 파라미터 수정
- 수정할 파라미터는 display_errors=Off -> On, opcache.enable=1 -> 0
- display_errors = Off 가 기본값 해당 값을 On으로 하면 에러를 볼 수 있음 (라이브 중엔 유저도 에러를 볼 수 있으니 주의!)
- opcahce.enable=1 미리 컴파일된 소스 코드를 메모리에 저장해 두었다가 빠르게 로드하는 기능. 저장시간으로 인해 테스트 시 즉각적인 피드백이 되지 않아 값을 0으로 변경