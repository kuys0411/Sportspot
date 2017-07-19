<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="google-site-verification"
	content="YHkzOS5N5M9qkZTIGtDDfuKidQhuMuSj02txDAxSlxg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>예약페이지</title>
<link rel="shortcut icon"
	href='http://www.seoul-escape.com/static/image/favicon.ico'
	type="image/x-icon">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,
                               initial-scale=1.0,
                               maximum-scale=1">
<meta name="title" content="Seoul Escape Room">
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/CACHE/css/58f590e8ac6c.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/reservation.css"
	type="text/css" />
<link href="http://www.seoul-escape.com/static/css/datepicker.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/c546a5c802e8.js"></script>
<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/38f6e66c6208.js"></script>

<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/da0caed938c7.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAA3t7a2pTWqsB_QnkLNfxdmiGxgXL045g"></script>
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/contact.css"
	type="text/css" /> -->

<!-- bootstrap -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 -->


</head>


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
			<!-- <nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					Brand and toggle get grouped for better mobile display
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

					Collect the nav links, forms, and other content for toggling
					<div class="collapse navbar-collapse" id="nav_collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/Project"> HOME </a></li>
							<li><a href="#" class="active"> SEARCH </a></li>

							<li><a href="/contact/"> MYPAGE </a></li>
							<li><a href="/contact/"> LOGOUT </a></li>
							<li class=""><a class="set_lang_en" href="#"> </a></li>

						</ul>
					</div>
					/.navbar-collapse
				</div>
				/.container-fluid
			</nav> -->
			<!-- 상단바 -->

			<!-- test -->
			<div id="main_content">
				<div class="container">
					<%-- <div class="row contact">
						<div id="reservation_bg">
							<img src="Resources/images/image_koo/main/main2.jpg">
						</div>

						<div class="col-xs-12 col-sm-6 nopadding">
							<div class="contact_bg">
								<img src="Resources/images/image_koo/main/main3.jpg"
									height="350" style="padding-left: 40px; padding-top: 80px;">
							</div>
							<div class="arrow-left"></div>
						</div>
						<br>
						<h3>
							<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Place Information</b>
						</h3>


						<div class="col-xs-12 col-sm-6 contact_content">

							<div id="hongdae" class="branch_tab active">

								<ul>
									<li>장소: ${placeinfo.pname}</li>
									<li>전화번호: ${placeinfo.pphone}</li>
									<li>홈페이지 이동: <a target="_blank"
										href="http://${placeinfo.phomepage}">Click</a>
									</li>
									<li>공휴일</li>
									<textarea rows="1" cols="50" readonly>${placeinfo.pholiday}</textarea>
									<li>대중교통</li>
									<textarea rows="5" cols="50" readonly>${placeinfo.phowtogo}</textarea>

									<li>상세주소: ${placeinfo.pdoro}</li>

								</ul>


							</div>
						</div>
					</div> --%>
					<!-- test -->

					<div id="main_content">

						<div class="container" id="reservation_container"
							ng-controller="AppController">

							<!-- <form action="/reservation/detail/" method="post"
								id="detail_form">
								<input type='hidden' name='csrfmiddlewaretoken'
									value='P4Knx6SygVfXsIJzUEJkeEVpVZCmxMPy' /> <input
									type="hidden" id="hidden_rn" name="reservation_number">
								<input type="hidden" id="hidden_pw" name="password">
							</form> -->

							<!-- <div class="subtitle">
								<span class="tab_wrapper">
									<p class="btn btn-warning">실시간 예약</p>
								</span>
							</div> -->

							<div id="book_a_session_wrapper" class="toggle_content active">


								<form name="myfrm" action="ReserveComplete" method="post"
									onsubmit="return false;">
									<!-- 지점 선택 & 날짜 선택 -->
									<div class="row">


										<!-- <div class="col-xs-12 col-sm-6 booking_input_wrapper">
											<div class="row">
												<div class="col-xs-6">
													<label> 날짜선택 </label>
												</div>

												<div class="col-xs-6">
													<input type="date" id="select_date" name="select_date" style="color:black" value="2017-07-19" min="2017-07-19" max="2017-07-31" >
													<input type="button" class="yellow" id="date_btn" name="date_btn" value="선택">
												</div>
											</div>
										</div> -->

										<!-- 지점 선택 -->
										<!-- <div class="col-xs-12 col-sm-6 booking_input_wrapper">
											<div class="row">
												<div class="col-xs-6">
													<label> 인원선택 </label>
												</div>
												<div class="col-xs-6">
													<input type="number" id="sel_count" name="sel_count" value="1"
														required="required"  style="color:black"> autofocus

												</div>
											</div>
										</div> -->
									</div>

									<table class="table">
										<thead>
											<tr>
												<th>시작시간</th>
												<th>신청인원</th>
												<th>예약상태</th>
											</tr>
										</thead>
										<tbody>
											<%-- <tr>
												<td>시작시간</td>
												<td>신청인원</td>
												<td><input type="submit" class="yellow"
														id="reservebtn" value="예약하기" onclick="call('${time}')"></td>
											</tr>
											<tr>
												<td>시작시간</td>
												<td>신청인원</td>
												<td><input type="submit" class="yellow"
														id="reservebtn" value="예약하기" onclick="call('${time}')"></td>
											</tr> --%>
											
											
											<c:forEach items="${time_info}" var="time" varStatus="status">
												<tr>
													<td>${time}:00</td>
													<td>${count_info[status.index]}</td> <!-- 수정해야한다. -->
													<td><input type="submit" class="yellow"
														id="reservebtn" value="예약하기" onclick="call('${time}')"></td>
												</tr>
											</c:forEach>

											<!-- <tr>
												<td>07:00</td>
												<td>20</td>
												<td><a class="red" href="#">예약불가</a></td>
											</tr> -->
										</tbody>
									</table>
									
									<div style="visibility: hidden" id="hidden"> 
										<input type="text" name="sel_pid" value="${placeinfo.pid}"></input>
										<input type="text" name="sel_place" value="${placeinfo.pname}"></input>
										<!-- <input type="text" id="select_time" name="select_time">시간</input> -->
										<textarea type="text" cols="1" rows="1" id="select_time" name="select_time"></textarea>
									</div>  
								</form>
							</div>

						</div>
					</div>


		
					
					<!-- 지도 뷰 -->

				</div>
				<!-- CONTAINER-->
			</div>
		</div>
	</div>
	<!-- MAIN CONTATINER -->

	<!-- <div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-6">
					<div class="footer_info">
						<p>SportSpot © 2017 SEOUL KDATA. All Rights Reserved.</p>
						<p>(주)SPOTSPORT | 한국데이터진흥원</p>
					</div>
				</div>

			</div>
		</div>
	</div> -->

	<script>
		
		/* $("#date_btn").on("click", function(){
			alert("날짜가 선택되었습니다. ajax로  가져오기 ");
		});
	
		function call(time){ //예약하기 버튼 눌렀을 때 call되는 함수 
			 	
				var result = confirm(time+":00시를 선택하셨습니다. 정말 예약하시겠습니까?" );
				var sel_count = document.getElementById("sel_count");
				//var sel_date = document.getElementById("select_date");
				
				//id(hidden)에 접근하여 time쓰기 (넘기기용)
		        var hidden_time= document.getElementById("select_time");   
		        hidden_time.innerHTML= time;
		        
		        /* if(sel_count.value==0){ 예외처리 
		        	alert("aaaaaaaaaaaaaaaa");
		        	sel_count.focus();
		        	return false;
		        } */
		         
				if(result){
		        	myfrm.submit(); 
		        } 
		} */
		
				
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

