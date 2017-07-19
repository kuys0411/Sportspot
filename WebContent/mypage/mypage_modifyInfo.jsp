<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title id="title_seoul_escape">MyPage</title>


<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0, maximum-scale=1">


<link rel="stylesheet" href="../Resources/css/mypage.css"
	type="text/css" />
<link rel="stylesheet" href="../Resources/css/mypage2.css"
	type="text/css" />
<link rel="stylesheet" href="../Resources/css/datepicker.css"
	type="text/css" />
<script type="text/javascript" src="../Resources/js/mypage.js"></script>
<script type="text/javascript" src="../Resources/js/mypage2.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
	<div id="body_wrapper">
		<div id="body_inner">
			<nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div id="top_logo">
							<a class="navbar-brand"><img
								src="../Resources/images/jin/logo/full.png"
								style="width: 360px;"></a>
						</div>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#nav_collapse"
							id="mobile_menu_button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>


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
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>

			<div id="main_content">

				<div class="container" id="reservation_container">
					<div id="carousel" class="carousel slide carousel-fade"
						data-ride="carousel">
						<!-- slider images -->
						<div class="carousel-inner">
							<div class="active item">
								<img src="../Resources/images/jin/mpg/mpgslider03.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider04.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider05.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider01.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider02.png">
							</div>
						</div>
					</div>

					<div id="booking_toggle_wrapper" class="subtitle">
						<span class="tab_wrapper"> <a id="btn_toggle_book"
							class="toggle_button" href="mypage_book_main.jsp"> 예약 현황 </a>
						</span>
						<!-- <span class="tab_wrapper"> <a id="btn_toggle_priceinfo" class="toggle_button" href="mypage_message.jsp"> 받은 메시지 </a> </span> -->

						<span class="tab_wrapper"> <a id="btn_toggle_priceinfo"
							class="toggle_button active" href="mypage_modifyInfo.jsp">
								회원정보 수정 </a>
						</span> <span class="tab_wrapper"> <a id="btn_toggle_cancel"
							class="toggle_button" href="mypage_memberout.jsp"> 회원 탈퇴 </a>
						</span>
					</div>


					<div class="col-xs-12 col-sm-6 contact_content">
						<%-- 
<tr>
			<td>${emp.employee_id }</td>
			<td><a href="empDetail?empid=${emp.employee_id }">${emp.first_name }</a></td>
			<td>${emp.last_name }</td>
			<td>${emp.email }</td>
			<td>${emp.hire_date }</td>
			<td>${emp.job_id }</td>
			<td>${emp.department_id }</td>
			<td>${emp.salary }</td>
			<td><a href="empDelete?empid=${emp.employee_id }">삭제</a></td>
			<td><button onclick="location.href='empDelete?empid=${emp.employee_id}'">삭제</button></td>
		</tr>	 --%>
						<form id="send_mail" method="post" action="modifyinfo">

							<div id="idField">
								<label> 아이디</label> <input type="text" class="form-control"
									name="id" value="${memDTO.mid }" readonly>
							</div>

							<div id="nameField">
								<label> 이름 </label> <input type="text" class="form-control"
									name="name" value="${memDTO.mname }" required>
							</div>


							<div id="emailField">
								<label> 이메일 </label> <input type="text" class="form-control"
									name="email" value="${memDTO.memail }" required>
							</div>

							<div id="phoneField">
								<label> 비밀번호 </label> <input type="password"
									class="form-control" name="password" value="${memDTO.mpwd }"
									required>
							</div>

							<div id="genderField">
								<label> 성별 </label> <input type="radio" name="sex" value="male"
									<c:if test= '${memDTO.msex} == "male"'>checked</c:if>>
								Male <input type="radio" name="sex" value="female"
									<c:if test= '${memDTO.msex} == "female"'>checked</c:if>>
								Female
							</div>

							<div id="interestField">
								<label> 관심종목 </label> <input type="radio" name="interest"
									value="soccer"
									<c:if test= '${memDTO.minterest} == "soccer"'>checked</c:if>>
								Soccer <input type="radio" name="interest" value="basketball"
									<c:if test= '${memDTO.minterest} == "basketball"'>checked</c:if>>
								Basketball
							</div>


							<input type="submit" value='수정하기' class="form-control"
								id="send_email">
						</form>

					</div>

					<div
						class="col-xs-12 col-sm-6 nopadding visible-sm visible-md visible-lg">
						<div class="contact_bg">
							<img src="../Resources/images/SOO/office.jpg"
								style="height: 350px;">
						</div>
						<div class="arrow-right"></div>
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
	</div>
	</div>
</body>
</html>