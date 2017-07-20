<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>SPORTSPOT</title>

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

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1">

<!-- 	design : CSS -->
<link rel="stylesheet" href="../Resources/css/main/index1.css"
	type="text/css" />
<link rel="stylesheet" href="../Resources/css/main/index2.css"
	type="text/css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="../Resources/js/index1.js"></script>
<script src="../Resources/js/index2.js"></script>

</head>
<body>

<div id="body_wrapper">
		<div id="body_inner">
			<nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div id="top_logo">
							<a class="navbar-brand" href="index.jsp"><img
								src="../Resources/images/jin/logo/full.png"></a>
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
							<li><a id="search" href="search.jsp"> SEARCH </a></li>
							
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
					<img src="../Resources/images/jin/goodbye.png">
					<div id="remove_message_title">탈퇴가 완료되었습니다. </div>
					<div id="remove_message">  </br>그동안 SportSpot을 이용해주셔서 감사합니다. <br>
					SportSpot이 생각나면 언제든지 다시 찾아주세요!</div>
				</div>
				<iframe width="3" height="3" src="https://www.youtube.com/embed/GVRsE1EDvnw" frameborder="0" autoplay=1 start=82 ></iframe>
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

</body>
</html>