- **목차**

# HTML의 기초

> **html는 Semantic(의미가 분명하게)하게 작성되어야 합니다**

html는 각각의 **의미**를 갖는 "**태그**"라는 요소가 존재하며 
태그는 그 의미를 보다 명확하게 "**명시**"하기 위해 "**속성**"을 가진다.

## 태그의 사용 예시


```html
<h1>구름EDU 클라우드 SW교육환경</h1> <!-- 제목 -->
<p>스크래치3, 엔트리부터 파이썬, C언어까지 설치가 전혀 필요없고강력한 LMS와 연동된 SW교육환경이 눈앞에 펼쳐집니다.누구나 SW에 대한 지식과 경험을 나눌 수 있고, 누구나 SW를 배울 수 있는
 환경! 지금 경험해보세요!</p> <!-- 본문 -->
<h1>황제펭귄</h1><!--제목 -->
<h2>생물학적 특성</h2> <!-- 소제목 -->
<p>지구상에 생존하는 모든 펭귄들 중에서 가장 키가 크고 체중이 많이 나가는 종이다. 서식지는 남극과 포클랜드 제도이다. 암컷과 수컷은 덩치와 깃털 무늬가 비슷하며, 성체는 최고 122센티미터에
몸무게는 22~37킬로그램까지 나간다. 등은 검고 가슴 부위는 창백한 노랑색을 띠고 있으며 귀 부위는 밝은 노랑색이다. 다른 펭귄들과 마찬가지로 황제펭귄은 날지 못한다. 이들은 해양 생활에
적합한 유선형의 몸매와 플리퍼(flipper)로 불리는 납작한 날개를 갖고 있다.</p>
<br><!-- 줄바꿈 -->

<!-- 문장 문단 -->
    <section></section>
    <p></p>
    <!-- 강조 태그 -->
    <strong></strong><!-- 강조 -->

<em>머리가 아닌 마음으로 우는 내가 좋다.</em> <!-- 강조 -->
```

## 속성의 예시

```html
<!-- anker tag -->
<!-- href(hypertext reference)라는 속성을 통해 원하는 경로로 이동 -->
    <!-- URL 다른 페이지 -->
    <a href="URL">버튼 내용</a>
    <a href="./local경로">버튼 내용</a>
    <!-- 페이지 내 이동 : id -->
    <a href="#hello">버튼 내용</a>
    <!-- 메일 발송-->
    <a href="mailto:메일주소">버튼 내용</a>
    <!-- 전화번호 -->
    <a href="tel:전화번호">버튼 내용</a>
    <!-- target -->
    <a href="url" target="_blank"></a>

<em>Be Really Excellent</em>
    <h1>구름EDU 클라우드 SW교육환경</h1>
    <p>스크래치3, 엔트리부터 파이썬, C언어까지 설치가 전혀 필요없고
        강력한 LMS와 연동된 SW교육환경이 눈앞에 펼쳐집니다.
        누구나 SW에 대한 지식과 경험을 나눌 수 있고, 누구나 SW를 배울 수 있는 환경! 지금 경험해보세요!
    </p>
    <a href="https://edu.goorm.io">서비스 바로가기</a>

    <a href="http://www.youtube.com/c/kimbug" target="_blank"> <!-- target 속성으로 새 탭으로 열었음 -->

<!-- image -->

<!-- src="주소" , alt="대체 문자" -->
<!-- alt(alternative) 대체 문자는 이미지의 로딩에 실패했거나 스크린 리더로 화면을 읽을 때 사용 -->
<!-- 절대경로로 이동 -->
    <img src="https://grm-project-template-bucket.s3.ap-northeast-2.amazonaws.com/lesson/les_GwRsB_1589967239522/dfa30e3494c9853d6e19fed4aff6f1b005c884617b8e8727e7bce93c0aa79f69.png"
        alt="고양이를 바라보는 개">

<!-- 로컬경로로 이동 -->
    <img src="./images/58445030be024b975e4cc792e9bad2b06225e071b198559a10d47f031566b661.png" alt="귀여운 고양이">
```

## 태그 별 사용법

### 제목 태그 <h1> ~ <h6>

```html
<h1>대빵 제목</h1>
<h2>소제목</h2>
<h3>제목</h3>
<h4>목차</h4>
<h5>세부목차</h5>
<h6>미니미 목차</h6>
<!-- h6까지 존재 -->
```

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/333001af-5ae1-4247-b55a-39b2fd358950/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/333001af-5ae1-4247-b55a-39b2fd358950/Untitled.png)

### 본문 태그 <p> 그리고 강조<em>과 줄바꿈 <br>

```html
	<h1>구름EDU 클라우드 SW교육환경</h1>
	<p>스크래치3, 엔트리부터 파이썬, C언어까지 설치가 전혀 
	필요없고강력한 LMS와 연동된 SW교육환경이 눈앞에 펼쳐집니다.누구나 
	SW에 대한 지식과 경험을 나눌 수 있고, 누구나 SW를 배울 수 있는 환경! 지금 경험해보세요!</p>
	<!-- 줄바꿈은 -->
	<br>
	<!-- 강조는 -->
	<strong>hello</strong>
	<br>
	<em>world</em>
```

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/98dc83b2-4953-485c-9c5d-ffc1f3446a76/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/98dc83b2-4953-485c-9c5d-ffc1f3446a76/Untitled.png)

### 리스트 <ul> <ol> 그리고 <li>

```html
<!-- list -->
    <!-- 하기와 같은 표준을 반드시 지켜야함 다른 태그는 표준이 아님-->
    <ul>
        <li></li>
        <li></li>
    </ul>

    <h1 id="hi">개발 분야</h1>
    <ul>
        <li>* 웹 개발자</li>
        <li>* 프론트엔드 개발자</li>
        <li>* 자바 개발자</li>
        <li>* 안드로이드 개발자</li>
        <li>* iOS 개발자</li>
        <li>파이썬 개발자</li>*
        <li>* 시스템,네트워크 관리자</li>
    </ul>

    <h1>급상승 검색어</h1>

    <ol>

        <li> <a href="#hi">김버그 </a></li>
        <li> <a href="#hi">프론트엔드 개발 </a> </li>
        <li> <a href="#hi">구름 </a> </li>
        <li> <a href="#hi">주니어개발자 </a></li>
        <li> <a href="#hi">Goorm </a></li>
        <li> <a href="#hi">Frontend </a> </li>
        <li> <a href="#hi">개발 </a></li>
        <li> <a href="#hi">구름IDE </a> </li>
        <li> <a herf="#hi">버그 킴 </a> </li>
        <li> <a href="#hi">튕김버그 </a></li>

    </ol>
```

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/816cfdd0-1617-40a0-97ea-5b996b54fa5b/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/816cfdd0-1617-40a0-97ea-5b996b54fa5b/Untitled.png)

### 정의 리스트 <dl> 그리고 <dt> <dd>

```html
<!-- 정의 리스트 -->

    <!-- 1. 용어를 정의할떄 
     2. key-value 정보를 제공할 때 -->

    <!-- 옳은 문법 -->
    <dl>
        <!-- key -->
        <dt></dt>
        <!--value  -->
        <dd></dd>
    </dl>

    <dl>
        <dt>dev</dt>
        <dt>dev</dt>
        <dd>ever never ever</dd>
        <dd>eternal study</dd>
    </dl>

    <dl>
        <div>
            <dt>dev</dt>
            <dd>ever never ever</dd>
        </div>
        <div>
            <dt>dev2</dt>
            <dd>eternal study</dd>
        </div>
    </dl>

    <!-- 나쁜 문법 예시 -->
		<!-- dt 뒤엔 반드시 dd로 정의를 해줘야한다 -->
    <dl>
        <dt>alphabey</dt>
        <dd>abc</dd>
        <dt>lang</dt>
    </dl>
```

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/60daacf7-0ccd-416e-97a2-3f7cbc3ee5fe/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/60daacf7-0ccd-416e-97a2-3f7cbc3ee5fe/Untitled.png)

### 인용구 <blockquote><q> & 출저 <cite>

```html
<!-- 인용구 -->
    <!-- callout  -->
    <blockquote cite="http://edu.groom.io">우리가 겪을 수 있는 가장 아름다운 체험은 신비다.
        <br>신비는 모든 참 예술과 과학의 근원이다.
    </blockquote>
    <cite>- 알버트 아인슈타인</cite>

    <!-- 문장 내에 인용구 -->
    <blockquote cite="https://bit.ly/2mvSYrT">
    <p>The study is the first to project the long-term outlook for Antarctica's largest penguins, which can grow 1.2
        meters (four ft) tall, seeking to fill a gap in understanding climate change and wildlife in one of the remotest
        parts of the planet.</p>

    <p>Overall, numbers were set to fall by at least 19 percent from current levels by 2100 as sea ice melts. And
    two-thirds of colonies of the birds, which have distinctive golden head patches, would decline by more than half, it
    said.</p>
    
    <p>
        <q>"It's not happy news for the emperor penguin," </q>
         said Hal Castellan of the U.S. Woods Hole Oceanographic Institution,
        a co-author of the study in the journal Nature Climate Change.
    </p>
    <cite>
    “Emperor Penguin Population to Slide Due to Climate Change”, Scientific American, June 29, 2014,
    https://bit.ly/2mvSYrT
    </cite>
    </blockquote>
```

### 🧙🏿‍♂️흑마술 <div> <span>

```html

```