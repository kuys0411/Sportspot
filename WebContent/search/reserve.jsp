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

<%
	String userid = null;
	request.setCharacterEncoding("utf-8");
	if ((String) session.getAttribute("userID") != null) {
		userid = (String) session.getAttribute("userID");

	} else {
		response.sendRedirect("login.jsp");
	}
%>


<script>
$(document).ready(function(){
	$("#date_btn").on('click', function(){
		$("#preesDelete").remove();
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

			<!-- Menu bar -->
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
							<li><a id="search" href="#"> SEARCH </a></li>
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
			<div id="main_content">
				<div class="container" id="reservation_container"
					ng-controller="AppController">

					<form action="/reservation/detail/" method="post" id="detail_form">
						<input type='hidden' name='csrfmiddlewaretoken'
							value='P4Knx6SygVfXsIJzUEJkeEVpVZCmxMPy' /> <input type="hidden"
							id="hidden_rn" name="reservation_number"> <input
							type="hidden" id="hidden_pw" name="password">
					</form>

					<div class="subtitle">

						<span class="tab_wrapper"> <a id="btn_toggle_book"
							class="toggle_button active">실시간 예약</a> <!-- 기존 버튼 ::  <p class="btn btn-warning" style="background-color: #f1c40f">실시간 예약</p> -->

						</span>
					</div>


					<div class="row contact">

						<div class="col-xs-12 col-sm-6 nopadding">
							<div class="contact_bg">
								<div id="map_ma"></div>
							</div>
						</div>

						<!-- Place Information --> 
						<br>
						<h3>
							<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${placeinfo.pname}</b>
						</h3>
						<div class="col-xs-12 col-sm-6 contact_content">
							<div id="hongdae" class="branch_tab active" syt>

								<ul>
									<%-- <li>장소: ${placeinfo.pname}</li> --%>
									<li>상세주소: ${placeinfo.pdoro}</li>
									<li>전화번호: ${placeinfo.pphone}</li>
									<li>홈페이지 이동: <a target="_blank"
										href="http://${placeinfo.phomepage}">Click</a></li>
									<li>공휴일</li>
									<textarea rows="1" cols="40" readonly>${placeinfo.pholiday}</textarea>
									<li>대중교통</li>
									<textarea rows="5" cols="40" readonly>${placeinfo.phowtogo}</textarea>


								</ul>


							</div>
						</div>
					</div>

					<div id="book_a_session_wrapper" class="toggle_content active">


						<form name="myfrm" action="ReserveComplete" method="post"
							onsubmit="return false;">
							<!-- 지점 선택 & 날짜 선택 -->
							<div class="row">

								<br>
								<div class="col-xs-12 col-sm-6 booking_input_wrapper">
									<div class="row">
										
										<div class="col-xs-6">
										
											<label> 날짜선택 </label>
										</div>

										<div class="col-xs-6">
											<input type="date" id="select_date" name="select_date"
												style="color: black" value="${current_date}"
												min="${current_date}" max="2017-07-31"></input> <input
												type="button" class="btn btn-default" id="date_btn"
												name="date_btn" value="선택"
												style="background-color: #333333; color: white;"></input>
										</div>
									</div>
								</div>
		
								<!-- 지점 선택 -->
								<div class="col-xs-12 col-sm-6 booking_input_wrapper">
									<div class="row">
										<div class="col-xs-6">
											<label> 인원선택 </label>
										</div>
										
										<div class="col-xs-6">
											<input type="number" id="sel_count" name="sel_count"
												value="1" required="required" style="color: black">


										</div>
									</div>
								</div>
							</div>

							<br>

							<div id="here"></div>
							<!--  -->
							<div id="preesDelete">

								<table class="table">
									<thead>
										<tr>
											<th>시작시간</th>
											<th>신청인원</th>
											<th>예약상태</th>
										</tr>
									</thead>
									<tbody>

										<c:forEach items="${time_info}" var="time" varStatus="status">
											<tr>
												<td>${time}:00</td>
												<td>${count_info[status.index]}</td>
												<!-- 수정해야한다. -->

												<c:set var="count" value="${count_info[status.index]}" />
												<c:choose>
													<c:when test="${count < 30}">
														<!-- 인원수 30명 미만 예약가능 -->
														<td><input type="submit" class="btn btn-warning"
															id="reservebtn" value="예약하기" onclick="call('${time}',${count_info[status.index]})"
															style="color:black;"></td>

													</c:when>

													<c:otherwise>
														<!-- 인원수 30명부터 예약 불가능  -->

														<td><input type="button" class="btn btn-default"
															id="reservebtn" value="예약불가" disabled="disabled"
															style="background-color: #ed3e43; border-color: #ed3e43; color: white;"></td>
													</c:otherwise>

												</c:choose>

											</tr>
										</c:forEach>


									</tbody>
								</table>
							</div>
							
							<div class="row">
								<div style="visibility: hidden" id="hidden">
									<input type="text" id="sel_pid" name="sel_pid"
										value="${placeinfo.pid}"></input> <input type="text"
										name="sel_place" value="${placeinfo.pname}"></input>
									<!-- <input type="text" id="select_time" name="select_time">시간</input> -->
									<textarea type="text" cols="1" rows="1" id="select_time"
										name="select_time"></textarea>
								</div>
							</div>
						</form>

					</div>



				</div>
			</div>


			<!-- <div class="subtitle">
						<span class="tab_wrapper">
							<p class="btn btn-warning" style="background-color: #f1c40f">오시는
								길</p>
						</span>
					</div> -->

			<!-- 지도 view -->
			<script type="text/javascript"
				src="http://maps.google.com/maps/api/js?key=AIzaSyDWKmcj5ZnlDMJFJOcD7gTj4KF49JRo3N4"></script>
			<!-- key 값 입력 -->
			<style>
#map_ma {
	width: 100%;
	height: 460px;
	clear: both;
	border: solid 1px red;
}
</style>

			<!-- <div id="map_ma"></div> -->
			<script type="text/javascript">
						$(document).ready(function() {
						var myLatlng = new google.maps.LatLng(${placeinfo.py},${placeinfo.px}); // 위치값 위도 경도
						var Y_point			= ${placeinfo.py};		// Y 좌표
						var X_point			= ${placeinfo.px};		// X 좌표
						var zoomLevel		= 18;				// 지도의 확대 레벨 : 숫자가 클수록 확대정도가 큼
						var markerTitle		= "check";		// 현재 위치 마커에 마우스를 오버을때 나타나는 정보
						var markerMaxWidth	= 500;				// 마커를 클릭했을때 나타나는 말풍선의 최대 크기

						// 말풍선 내용
						var contentString	= '<div>' +
						'<p>${placeinfo.pname}</p>' +
						'</div>';
						var myLatlng = new google.maps.LatLng(Y_point, X_point);
						var mapOptions = {
											zoom: zoomLevel,
											center: myLatlng,
											mapTypeId: google.maps.MapTypeId.ROADMAP
										}
						var map = new google.maps.Map(document.getElementById('map_ma'), mapOptions);
						var marker = new google.maps.Marker({
																position: myLatlng,
																map: map,
																title: markerTitle
						});
						var infowindow = new google.maps.InfoWindow(
																	{
																		content: contentString,
																		maxWizzzdth: markerMaxWidth
																	}
								);
						google.maps.event.addListener(marker, 'click', function() {
							infowindow.open(map, marker);
						});
					});
					</script>
			<!-- 지도 뷰 -->

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
						<p>(주)SPOTSPORT | 한국데이터진흥원</p>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
		

        $('#date_btn').on('click',function(){ 
           //alert("데이터 전송~ ^^*");
	       $.ajax({ 
	               url:'countget', //가져오고자하는 서버페이지 주소를 넣는다. 
	               type:'get', //데이터를 서버로 전송하게 된다. 
	               data:{ 
	            	   sel_pid: $('#sel_pid').val(),
	            	   sel_date: $('#select_date').val()  //에디터박스의 아이디를 넣으면 해당 에디터박스의 데이터를 보내준다.
	               } , 
	               success : function(t){ 
	                            /*  alert('성공!' + t); */
	                             
	                             $("#here").html(t);
	                         
	               } , 
	               error : function(){ 
	                     /*   alert('실패 ㅠㅠ'); */
	               } 
	        });
    	}); 

		$("#date_btn").on("click", function(){
			/* alert("날짜가 선택되었습니다. ajax로  가져오기 "); */
			var date = $("#select_date").val();
			
			$("#here").load("countget", "date="+date, function(){ //서버에서 사용할 이름이: aaa인 것이다.
				/* alert("서버에 다녀옴"); */ //갔다와서 실행하는 것이다.
			});
			
		});
	
		function call(time, count_info){ //예약하기 버튼 눌렀을 때 call되는 함수 
			 	
				var sel_count = document.getElementById("sel_count");
				var hidden_time= document.getElementById("select_time");   
		        hidden_time.innerHTML= time;
		        
		        var past_count= Number(count_info); //정수로 변환 
		        var select_people = Number(sel_count.value);
		       	var people = past_count+select_people;
		       
		       	if(people>30){
		       		alert("인원 초과로 예약이 불가능합니다.");
		       		return;
		       	}
		       	
		       	var result = confirm(time+":00시를 선택하셨습니다. 정말 예약하시겠습니까?" );
		       	if(result){
		        	myfrm.submit(); 
		        }
		       	
		}
		
		
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


