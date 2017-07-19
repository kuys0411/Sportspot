<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title id="title_seoul_escape">MyPage</title>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0, maximum-scale=1">


<link rel="stylesheet" href="../Resources/css/mypage.css" type="text/css" />
<link rel="stylesheet" href="../Resources/css/mypage2.css" type="text/css" />
<link rel="stylesheet" href="../Resources/css/datepicker.css"
	type="text/css" />
<script type="text/javascript" src="../Resources/js/mypage.js"></script>
<script type="text/javascript" src="../Resources/js/mypage2.js"></script>
<script>

if(${result} == 0){
	alert("로그인 아이디를 다시 확인해주세요.(없는 계정입니다)");
}

else if(${result} == 2){
	alert("로그인 비밀번호를 다시 확인해주세요.");
}

</script>


</head>


<body ng-app="myapp">


	<div id="body_wrapper">
		<div id="body_inner">
			<nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div id="top_logo">
							<a class="navbar-brand" href="/"><img
								src="/static/image/logo_v6.jpg"></a>
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
												<ul class="nav navbar-nav navbar-right" id="navbar-ul">
							<li><a href="/" class="active"> HOME </a></li>
							<li><a href="searchTest"> SEARCH </a></li>
							<!--  로그인을 하면 로그아웃이랑 MyPage로 교체 -->
							<li id="mypage"><a href="mypage/mypageShowInfo">MYPAGE</a></li>
							<li id="logout"><a href="logout"><span></span>LOGOUT</a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

			<div id="main_content">


				<div class="container" id="reservation_container"
					ng-controller="AppController">
					<div id="reservation_bg">
						<img id=reservation_img src="../Resources/images/SOO/mypageImage.jpg">
					</div>



					<div id="booking_toggle_wrapper" class="subtitle">
						<span class="tab_wrapper"> <a id="btn_toggle_book"
							class="toggle_button" href="mypage_book_main.jsp"> 예약 현황 </a>
						</span>
						<!-- <span class="tab_wrapper"> <a id="btn_toggle_priceinfo" class="toggle_button" href="mypage_message.jsp"> 받은 메시지 </a> </span> -->

						<span class="tab_wrapper"> <a id="btn_toggle_priceinfo"
							class="toggle_button" href="mypage_modifyInfo.jsp"> 회원정보 수정 </a>
						</span> <span class="tab_wrapper"> <a id="btn_toggle_cancel"
							class="toggle_button active" href="mypage_memberout.jsp"> 회원
								탈퇴 </a>
						</span>
					</div>


  <div id="book_info_wrapper">
    <div id="login_box">
      <form id="login_form" method="post" action="removeInfo">
        <legend> 최종 확인 </legend>
        <p class="error_msg"> 아이디와 비밀번호를 입력해 주세요. </p>

        <input type="text" class="form-control book_login_input" placeholder="ID" name="userID">
        <input type="password" class="form-control book_login_input" placeholder="Password" name="password">

        <input type="submit" class="form-control" id="book_login_button" value="확인">
      </form>
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
</body>
</html>