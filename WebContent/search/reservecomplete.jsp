<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!-- Meta files -->

<meta name="google-site-verification"
	content="YHkzOS5N5M9qkZTIGtDDfuKidQhuMuSj02txDAxSlxg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,
                               initial-scale=1.0,
                               maximum-scale=1">
<meta name="title" content="Seoul Escape Room">
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr"><!-- n초후 화면 넘어가기 -->

<title>SportSpot Reservation</title>


<!-- design : icon -->
<link rel="shortcut icon" href="../Resources/images/jin/ico/favicon.png"
	type="image/x-icon">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../Resources/images/jin/ico/ghost-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../Resources/images/jin/ico/ghost-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../Resources/images/jin/ico/ghost-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../Resources/images/jin/ico/ghost-icon-57-precomposed.png">


<!-- CSS old -->


<!-- <link rel="stylesheet"
	href="http://www.seoul-escape.com/static/CACHE/css/58f590e8ac6c.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/reservation.css"
	type="text/css" />
<link href="http://www.seoul-escape.com/static/css/datepicker.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/contact.css"
	type="text/css" />
	 -->

<!-- CSS new -->


<link rel="stylesheet" href="/Project/Resources/css/reservation1.css"
	type="text/css" />
<link rel="stylesheet" href="/Project/Resources/css/reservation2.css"
	type="text/css" />
<link rel="stylesheet" href="/Project/Resources/css/datepicker2.css"
	type="text/css" />
<link rel="stylesheet" href="/Project/Resources/css/contact.css"
	type="text/css" />


<!-- Java Script -->
<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/c546a5c802e8.js"></script>
<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/38f6e66c6208.js"></script>

<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/da0caed938c7.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAA3t7a2pTWqsB_QnkLNfxdmiGxgXL045g"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

</head>
<%
	String userid = null;
	request.setCharacterEncoding("utf-8");
	if ((String) session.getAttribute("userID") != null) {
		userid = (String) session.getAttribute("userID");
		
	}else{
		response.sendRedirect("../login.jsp");
	}
%>

<body ng-app="myapp">
	
	<script language="JavaScript">
   function next(){
      location = 'mypage/mypageShowInfo';
   }
   </script>
   <body onLoad="setTimeout('next()', 3500)"> <!-- 3초 후 이동 -->
   
   
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
						<li><a href="/Project"> HOME </a></li>
						<li><a id="search" href="search.jsp"> SEARCH </a></li>
						<li id="mypage"><a href="mypage/mypageShowInfo"
							class="active">MYPAGE</a></li>
						<li id="logout"><a href="logout"><span></span>LOGOUT</a></li>
						<li id="login_result"><a><span id="userid"><%=userid%>님
									환영합니다.</span></a></li>
					</ul>
				</div>


				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- 상단바 -->

		<!-- test -->
		<div id="main_content">
			<div class="container">
				<div class="row contact">
					<div id="reservation_bg">
						<img src="Resources/images/jin/reservation_success.jpg">
					</div>

					<br>

					<h3>

						<b><center>예약 성공!</center></b>
					</h3>


					<div class="col-xs-12 col-sm-12 contact_content">

						<div id="hongdae" class="branch_tab active">

							<table class="table table-striped table-hover ">
								<thead>
									<tr>
										<th><center>날짜</center></th>
										<th><center>장소</center></th>
										<th><center>예약시간</center></th>
										<th><center>인원</center></th>
									</tr>
								</thead>
								<tbody>


									<tr class="warning">
										<td><center>${date}</center></td>
										<td><center>${place}</center></td>
										<td><center>${time}:00</center></td>
										<td><center>${bnum}명</center></td>
									</tr>

								</tbody>
							</table>

							<br> <br>

						</div>
					</div>
				</div>




			</div>
			<!-- CONTAINER-->
		</div>
	</div>
	</div>
	<!-- MAIN CONTATINER -->

	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-6">
					<div class="footer_info">
						<p>SportSpot © 2017 SEOUL KDATA. All Rights Reserved.</p>
						<p>(주)SPORTSPOT | 빅데이터 청년인재 서울 2반 |
					</div>
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


