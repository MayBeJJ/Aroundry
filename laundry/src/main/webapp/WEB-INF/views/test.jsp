<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 통합시 지워야함  -->
  <!-- Custom CSS -->
  <link href=" ${pageContext.request.contextPath}/resources/css/index.css?<%=new java.util.Date()%>'" rel='stylesheet'/>
  <link href=" ${pageContext.request.contextPath}/resources/css/headerfooter.css" rel='stylesheet'/>
  <!-- Fonts -->
  <link href=" ${pageContext.request.contextPath}/resources/fonts/fonts_style.css" rel='stylesheet'/>
  <link rel="shortcut icon" type="image/x-icon" href="resources/images/logo.ico" />
<!-- 지울예정  -->
<title>한울빨래방</title>
</head>
<body>
  <background></background>
  <div id="navbar" class="">
    <div class="inner_wrap">
      <div id="logo" style="width: 96px; height: 36px;"><a href="index">한울빨래방</a></div>
      <div id="link_menu">
        <li><a href="about"><i class="home"></i>회사소개</a></li>
        <li><a href="khjsolution"><i class="solution"></i>솔루션소개</a></li>
        <li><a href="partner"><i class="guide"></i>입점안내</a></li>
        <li><a href="member"><i class="boss"></i>관리자 회원가입</a></li>
        <li>
          <button class="modal-button" href="#myModal"><i class="contact"></i>문의하기</button>
        </li>
        <li>
          <button class="close">X</button>
        </li>
      </div>
      <div id="menu_icon" style="margin: 2px 0px;"></div>
    </div>
  </div>
  <section class="intro">
    <div class="element pencil"></div>
    <div class="element pencilcase"></div>
    <div class="element note"></div>
    <div class="element headphone"></div>
    <div class="inner_wrap">
      <div class="cts">
        <h1>빨래방 공간 예약 앱 한울빨래방</h1>
        <h2>빨래방, 편의시설 다 모았다!</h2>
        <div class="logo_title"></div>
        <div class="download_group">
          <button class="googleplay second">
          	<img src='img/dwbtn_googleplay2.png' onclick='window.open("https://play.google.com/store/apps/details?id=com.studymoa_app")'>
          </button>
        </div>
      </div>
    </div>
  </section>
  <section class="first">
    <div class="element"></div>
    <div class="inner_wrap">
      <div class="cts">
        <h1>내 주변 빨래 공간을 한번에</h1>
        <h2>언제 어디서든 빨래 타이밍!</h2>
        <download_label>
          <div>
            <p>한울빨래방<br>
              앱다운로드</p>
            <div class="download_group">
              <button class="appstore" onclick="window.open('https://apps.apple.com/kr/app/id1482125295')"></button>
              <div class="vertical_bar"></div>
              <button class="googleplay"
                onclick="window.open('https://play.google.com/store/apps/details?id=com.studymoa_app')"></button>
            </div>
          </div>
        </download_label>
      </div>
    </div>
  </section>
  <section class="second">
    <div class="element"></div>
    <div class="inner_wrap">
      <div class="cts">
        <h1>가기 전에 미리 예약</h1>
        <h2>내가 항상 앉던 그 자리 오늘은 비었을까?</h2>
        <download_label>
          <div>
            <p>한울빨래방<br>
              앱다운로드</p>
            <div class="download_group">
              <button class="appstore" onclick="window.open('https://apps.apple.com/kr/app/id1482125295')"></button>
              <div class="vertical_bar"></div>
              <button class="googleplay"
                onclick="window.open('https://play.google.com/store/apps/details?id=com.studymoa_app')"></button>
            </div>
          </div>
        </download_label>
      </div>
    </div>
    <a class="scrol_down"><i class="arrow"></i></a>
  </section>
  <section class="third">
    <div class="inner_wrap">
      <div class="element"></div>
      <div class="cts">
        <h1>10초면 끝!</h1>
        <h2>1초가 아까운 시험기간,<br>
          오랜시간 줄서서 기다리지 마세요!</h2>
        <download_label>
          <div>
            <p>한울빨래방<br>
              앱다운로드</p>
            <div class="download_group">
              <button class="appstore" onclick="window.open('https://apps.apple.com/kr/app/id1482125295')"></button>
              <div class="vertical_bar"></div>
              <button class="googleplay"
                onclick="window.open('https://play.google.com/store/apps/details?id=com.studymoa_app')"></button>
            </div>
          </div>
        </download_label>
      </div>
    </div>
    <a class="scrol_down"><i class="arrow"></i></a>
  </section>

  <div class="contens">
    <div class="bottom_btn_group" style="margin-bottom:88px;">
      <button onclick="location.href='about'"><i class="home"></i><span>회사소개 바로가기</span></button>
      <button onclick="location.href='khjsolution'"><i class="solution"></i><span>솔루션소개 바로가기</span></button>
      <button
        onclick="window.open('https://kitworks.s3.ap-northeast-2.amazonaws.com/%EC%8A%A4%ED%84%B0%EB%94%94%EB%AA%A8%EC%95%84+%EC%86%8C%EA%B0%9C%EC%84%9C.pdf');"><i
          class="download"></i><span>소개서 다운로드</span></button>
    </div>
  </div>
<footer>
	<div class='inner_wrap'>
		<logo>
			<i class='mongddang'></i>
			<span class='mongddang'>(주)한울빨래방</span>
		</logo>
		<info>
			<ul>
				<li>(주)한울빨래방</li>
				<li>광주 남구 경열로 3 2층</li>
				<li>사업자번호 : 123-45-67890</li>
				<li>통신판매번호 : 제2022-광주남구-0001호</li>
				<li>대표메일 : mail@gmail.com</li>
			</ul>
			<ul class='social_group'>
				<li>
					<a href='https://www.facebook.com/studymoa1' target='_blank'>
						<i class='facebook'></i>
					</a>
				</li>
				<li>
					<a href='https://www.instagram.com/' target='_blank'>
						<i class='instagram'></i>
					</a>
				</li>
				<li>
					 <a href='https://www.youtube.com/' target='_blank'>
						<i class='youtube'></i>
					</a>
				</li>
				<li class='boss'>
					<a href='https://maplestory.nexon.com/Home/Main' target='_blank'>
						<i class='ceo'></i>
						<span>관리자</span>
					</a>
				</li>
				<li class='kakao' id='kakao-chat-btn'>
					<a href='#'>
						<img src="https://developers.kakao.com/assets/img/about/logos/channel/consult_small_yellow_pc.png" title='카카오톡 채널 1:1 채팅 버튼' alt='카카오톡 채널 1:1 채팅버튼'>
					</a>
				</li>
			</ul>
		</info>
	</div>
</footer>
<!-- Modal myModal -->
  <div id="myModal" class="modal">
    <div class="modal-content input">
      <div class="modal-header"> <span class="close">×</span>
      <h2>문의하기</h2>
      </div>
      <div class="modal-body" style="padding:0; overflow:hidden;">
        <iframe src="//studymoa.me/partnership/?"></iframe>
      </div>
    </div>
  </div>

<!-- link_menu JS -->
<script type="text/javascript" async="" src="js/link_menu.js"></script>
<!-- Menu Scroll JS -->
<script type="text/javascript" async="" src="js/menu_scroll.js"></script>
<!-- Carousel Modal JS -->
<script type="text/javascript" async="" src="js/modal.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript" src="js/footer.js"></script>

</body></html>