<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String userid = null;
	request.setCharacterEncoding("utf-8");
	if((String)session.getAttribute("userID") != null){
		userid = (String)session.getAttribute("userID");
	}
%> 
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SPORTSPOT</title>
<link rel="shortcut icon" href='http://www.seoul-escape.com/static/image/favicon.ico' type="image/x-icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
<link rel="stylesheet" href="http://www.seoul-escape.com/static/CACHE/css/58f590e8ac6c.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/index.css?1500087960"
	type="text/css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</head>
<script>
	var id = "<%=userid %>";
	if(id != null){
		alert(id);
	}
</script>
<body ng-app="myapp">
	<div class="modal fade" id="error_modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 id="error_title"></h4>
				</div>
				<div class="modal-body">
					<p id="error_message"></p>
				</div>
				<div class="modal-footer">
					<button type="button" id="error_confirm_button"
						class="btn btn-default" data-dismiss="modal">확인</button>
					<!--<button type="button" id="error_button_extra" class="btn btn-default" data-dismiss="modal">확인</button>-->
				</div>
			</div>
		</div>
	</div>

	<div id="body_wrapper">
		<div id="body_inner">
			<nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div id="top_logo">
							<a class="navbar-brand" href="/"><img
								src="http://www.seoul-escape.com/static/image/logo_v6.jpg"></a>
						</div>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#nav_collapse"
							id="mobile_menu_button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="nav_collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/Project" class="active"> HOME </a></li>
							<li><a href="search"> SEARCH </a></li>
							<li><a href="searchTest"> RESERVE(TEMP) </a></li>
							<!--  로그인을 하면 로그아웃이랑 MyPage로 교체 -->
							<li id = "login"><a href="login.jsp"> LOGIN </a></li> 
							<li id="register"><a href="signup.jsp"> REGISTER </a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

			<div id="main_content">
				<div id="main-container" class="container">
					<div id="carousel" class="carousel slide carousel-fade"
						data-ride="carousel">

						<!-- Carousel items -->
						<div class="carousel-inner">
							<div class="active item">
								<img src="Resources/images/image_koo/main/main1.jpg">
							</div>
						</div>
					</div>

					<div id="features">
						<div class="row">
							<div class="feature col-xs-12 col-sm-6 col-md-3"
								id="feature_desc">
								<div class="feature_content yellow">
									<p class="head">
										<br /> <b> Sports Team Matching </b>
									</p>
									<p>마침내 한국에 상륙한 박진감 넘치는 오프라인 탈출게임 서울 에스케이프 룸은 홍대와 이태원 중심부에
										자리하고 있습니다. 수수께끼로 가득한 방에 갇힌 2~5명의 사람들. 탈출을 위해 다 같이 머리를 맞대고 60분
										안에 주어진 문제를 풀어야 하는데…</p>

									<a id="feature_btn" class="gray_button" href="/faq/"> 팀 찾기
									</a>
								</div>
							</div>

							<div class="feature col-xs-12 col-sm-6 col-md-3">
								<div class="item">
									<img src="Resources/images/image_koo/icon_sports/222-200.png" width="200"
										height="200" >
								</div>

								<div class="feature_content">
									<h4>애인과 함께</h4>
									<p>매일같이 카페나 영화관만 전전하는 데이트는 이제 지겨우신가요? 색다른 데이트를 즐겨보고 싶다구요?
										그렇다면 이제 뻔한 액션영화는 그만. 현실세계에 존재하는 흥미진진한 탈출게임의 주인공이 되어보세요!</p>
								</div>
							</div>

							<div class="feature col-xs-12 col-sm-6 col-md-3">
								<div id="item">
									<img src="Resources/images/image_koo/icon_sports/basketball icon.png"
										width="200" height="200">
								</div>
								<div class="feature_content">
									<h4>친구들과 함께</h4>
									<p>친구 여럿이서 제대로 된 액션을 즐겨보고 싶다구요? 온라인 게임이라면 이제 지긋지긋하다구요? 진정한
										액션이 뭔지 보여드리죠! 기량을 총동원해 암호를 해독해내세요. 제한시간 내에 탈출하지 못하면… 목숨은 하나 뿐!
									</p>
								</div>
							</div>

							<div class="feature col-xs-12 col-sm-6 col-md-3">
								<div id="item">
									<img src="Resources/images/image_koo/icon_sports/soccer.png" width="200"
										height="200">
								</div>
								<div class="feature_content">
									<h4>동료들과 함께</h4>
									<p>뻔한 패턴의 워크샵에 싫증나셨나요? 워크샵으로 재미와 단합이라는 두 마리 토끼를 잡는 게
										가능하냐구요? 함께 머리를 맞대고 탈출을 시도하다 보면 자연히 협동심까지 높아지는 서울 에스케이프 룸. 환상적
										팀웍을 펼쳐보세요!</p>
								</div>
							</div>
						</div>
					</div>


					<div class="carousel-inner">
						<div class="active item">
							<img src="Resources/images/image_koo/main/main2.jpg">
						</div>
					</div>
				
				</div>
			</div>
		</div>
	</div>

	<div id="footer">
		<div class="container">
			<div class="col-sm-12 col-md-6">
				<div class="footer_info">
					<p>Copyright © 2017 2017 SEOUL KDATA. All Rights Reserved.</p>
					<p>(주)SPORTSPOT | 빅데이터 청년인재 서울 2반 |</p>
				</div>
			</div>
		</div>
	</div>

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-80011128-1', 'auto');
		ga('send', 'pageview');
	</script>

	<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "1204ab0e340ff88";
		wcs_do();
	</script>

</body>
</html>
