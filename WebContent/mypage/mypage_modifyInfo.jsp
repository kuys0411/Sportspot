
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<style>
#margin{
	margin-right : 20px;
}
#ho{
	margin-right : 10px;
}

</style>
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

</script>

<%
	String userid = null;
    String ab="";
	request.setCharacterEncoding("utf-8");
	if ((String) session.getAttribute("userID") != null) {
		userid = (String) session.getAttribute("userID");
		ab = (String)request.getAttribute("a");
		System.out.println("안뇽"+ab);
	}else{
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
			<nav class="navbar navbar-default" role="navigation" id="nav">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<div id="top_logo">
							<a class="navbar-brand" href="../index.jsp"><img
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
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="nav_collapse">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/Project"> HOME </a></li>
							<li><a id="search" href="../search.jsp" > SEARCH </a></li>
							<li id="mypage" ><a href="#" class="active">MYPAGE</a></li>
							<li id="logout" ><a href="../logout"><span></span>LOGOUT</a></li>
							<li id="login_result" ><a><span id="userid"><%=userid%>님 환영합니다.</span></a></li>

						</ul>
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
						<span class="tab_wrapper"> <a id="btn_toggle_priceinfo" class="toggle_button" href="mypage_message.jsp"> 받은 메시지 </a> </span> 

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
		
							
							
							<div id="interestField">
								<label id = "margin" color= "yellow"> 관심종목 </label>
									  축구<input type="radio" name="interest" value="soccer" id="ho"
									 <%=("soccer".equals(ab))?"checked":""%>> 
								 야구<input type="radio" name="interest" value="baseball" id="ho"
									 <%=("baseball".equals(ab))?"checked":""%>>
								
								배드민턴<input type="radio" name="interest" value="badminton" id="ho"
									  <%=("badminton".equals(ab))?"checked":""%>> 
								수영 <input type="radio" name="interest" value="swimming" id="ho"
									 <%=("swimming".equals(ab))?"checked":""%>>
								골프
								<input type="radio" name="interest" value="golf" id="ho"
									 <%=("golf".equals(ab))?"checked":""%>> 
								 <br>빙상 스포츠<input type="radio" name="interest" value="ice" id="ho"
									 <%=("ice".equals(ab))?"checked":""%>>
								롤러스케이트
								 <input type="radio" name="interest" value="roller" id="ho"
									 <%=("roller".equals(ab))?"checked":""%>> 
								양궁 <input type="radio" name="interest" value="archery" id="ho"
									 <%=("archery".equals(ab))?"checked":""%>>
								사격
								<input type="radio" name="interest" value="shooting" id="ho"
									  <%=("shooting".equals(ab))?"checked":""%>> 
								기타 <input type="radio" name="interest" value="others" id="ho"
									 <%=("others".equals(ab))?"checked":""%>>
								
							</div>

							<br><br>
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