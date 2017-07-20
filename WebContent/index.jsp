<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String userid = null;
	request.setCharacterEncoding("utf-8");
	if ((String) session.getAttribute("userID") != null) {
		userid = (String) session.getAttribute("userID");
	}
%>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SPORTSPOT</title>

<!-- design : icon -->
<link rel="shortcut icon" href="Resources/images/jin/ico/favicon.png"
	type="image/x-icon">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="Resources/images/jin/ico/ghost-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="Resources/images/jin/ico/ghost-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="Resources/images/jin/ico/ghost-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="Resources/images/jin/ico/ghost-icon-57-precomposed.png">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1">

<!-- 	design : CSS -->
<link rel="stylesheet" href="Resources/css/main/index1.css"
	type="text/css" />
<link rel="stylesheet" href="Resources/css/main/index2.css"
	type="text/css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="Resources/js/index1.js"></script>
<script
	src="Resources/js/index2.js"></script>


<!-- 	ID alert  -->
<%-- <script>
	var id = "<%=userid %>";
	if(id != null){
		alert(id);
	} </script> --%>

<!-- Login-after effect (hidden menu) -->

<style type="text/css">
.hide {
	display: none;
}
#logout{
	margin-right:20px;
}

</style>

<script> if($(result) == 1){ alert("회원탈퇴가 완료되었습니다.");}</script>
</head>
<script>
	var id = "<%=userid%>";
	<%-- var Stringid=""<%=userid%>"+"님 환영합니다."; --%>
	$(document).ready(function(){
		if(id != "null"){
			alert(id+"님, 어서오세요! :D");
			$("#login").addClass("hide")
			$("#register").addClass("hide");
			$("#mypage").removeClass("hide");
			$("#logout").removeClass("hide");
			$("#login_result").removeClass("hide");
			$("#userid").text(id+"님 환영합니다.");
		}

		 $("#logout").click(function(){
			sessionStorage.removeItem("userID");
			$("#login").removeClass("hide");
			$("#register").removeClass("hide");
			$("#mypage").addClass("hide");
			$("#logout").addClass("hide");
			
			id="null";
			alert(id);
		}); 
		
	});
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
							<a class="navbar-brand" href="index.jsp"><img
								src="Resources/images/jin/logo/full.png"></a>
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
							<li><a href="index.jsp" class="active"> HOME </a></li>
							<li><a href="search.jsp"> SEARCH </a></li>
							<!--  로그인을 하면 로그아웃이랑 MyPage로 교체 -->
							<li id="login"><a href="login.jsp"><span>LOGIN</span> </a></li>
							<li id="register"><a href="signup.jsp"><span>REGISTER</span></a></li>
							<li id="mypage" class="hide"><a href="mypage/mypageShowInfo">MYPAGE</a></li>
							<li id="logout" class="hide"><a href="logout"><span></span>LOGOUT</a></li>
							<li id="login_result" class="hide"><a><span id="userid"></span></a></li>
							
						</ul>
					</div>

					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

			<div id="main_content">
				<div id="main-container" class="container">
					<!-- Carousel items -->
					<div id="carousel" class="carousel slide carousel-fade"
						data-ride="carousel">
						<!-- slider images -->
						<div class="carousel-inner">
							<div class="active item">
								<img src="Resources/images/jin/main/slider01.png">
							</div>
							<div class="item">
								<img src="Resources/images/jin/main/slider02.png">
							</div>
							<div class="item">
								<img src="Resources/images/jin/main/slider03.png">
							</div>
							<div class="item">
								<img src="Resources/images/jin/main/slider04.png">
							</div>
						</div>
						<!-- slider button -->
						<a class="left carousel-control" href="#carousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#carousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
					<div>
						<br>
					</div>
					<!-- second row contents(Service Features) -->
					<div id="features">
						<div class="row">
							<div class="feature col-xs-12 col-sm-6 col-md-3"
								id="feature_desc">
								<div class="feature_content yellow" style="height: 620px;">
									<p class="head">
										Spot <br /> <b> for<br />Sports
										</b>
									</p>
									<p>운동 장소를 찾을 땐, SportSpot이 정답입니다. 서울·경기 지역 910개의 운동시설 데이터를
										한 곳에 모았습니다. 축구, 야구, 농구 등 인기 구기 종목은 물론 롤러스케이트, 승마, 빙상, 요트, 씨름,
										싸이클 등 다양한 스포츠를 지원합니다. 지금 바로 운동을 예약하세요!</p>
									<!-- search test :: temp -->
									<a id="feature_btn" class="gray_button" href="searchTest">
										빨리 운동하러 가기 </a>
								</div>
							</div>

							<div class="feature col-xs-12 col-sm-6 col-md-3">
								<div id="feature_image_1">
									<div class="blinder inactive"></div>
									<div class="arrow-up"></div>
								</div>
								<div class="feature_content" style="height: 320px;">
									<h4>혼자 갈래요!</h4>
									<p>
										굳이 여럿이서 할 필요가 없는 운동을 하려고 하시나요? 걱정 말고 운동 시설을 찾아보세요! <br /> 내
										스케쥴과 맞는 시간에 예약을 하고 운동 시설에 찾아가시면 됩니다. 이렇게 간편하다니 너무 좋죠?
									</p>
								</div>
							</div>

							<div class="feature col-xs-12 col-sm-6 col-md-3">
								<div id="feature_image_2">
									<div class="blinder inactive"></div>
									<div class="arrow-up"></div>
								</div>
								<div class="feature_content">
									<h4>같이 갈까요?</h4>
									<p>
										우리 팀 혹은 상대 팀 인원을 모두 모으지 못해서 고민이시라면? 걱정 말고 운동 시설을 찾아서 예약하세요. 남은
										예약 인원을 확인하면 <br /> 나와 함께 운동할 사람의 숫자를 알 수 있어요. 현장에서 직접 만나 팀을
										구성하여 간편합니다.
									</p>
								</div>
							</div>

							<div class="feature col-xs-12 col-sm-6 col-md-3">
								<div id="feature_image_3">
									<div class="blinder inactive"></div>
									<div class="arrow-up"></div>
								</div>
								<div class="feature_content">
									<h4>다 함께 가죠~</h4>
									<p>
										우리팀, 상대팀 모두 인원이 확정된 상태인가요? 복잡한 설정은 모두 빼고 간편하고 직관적인 기능만 제공하는
										SportSpot이 제격입니다!<br />약속된 시간과 장소에 예약인원을 입력하고 간단하게 장소를 예약하세요.
									</p>
								</div>
							</div>
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

	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "1204ab0e340ff88";
		wcs_do();
	</script>

</body>
</html>
