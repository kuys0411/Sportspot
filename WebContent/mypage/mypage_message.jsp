
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String userid = null;
	request.setCharacterEncoding("utf-8");
	if ((String) session.getAttribute("userID") != null) {
		userid = (String) session.getAttribute("userID");
	}
%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
.msgForm{
	width : 250px;
	height : auto;
	float:left;	
	border-style: solid;
    border-color: #ff0000;

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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>

<script>





$(document).ready(function(){
	$('#refresh').on('click',function(){ 
		$('#here').empty();
	 $.ajax({ 
	         url:'http://localhost:8888/Project/Mypage_messageloadServlet', //가져오고자하는 서버페이지 주소를 넣는다. 
	         type:'GET', //데이터를 서버로 전송하게 된다. 
	         data:{ 
	        	 A: 'b'
	      	     //에디터박스의 아이디를 넣으면 해당 에디터박스의 데이터를 보내준다.
	         }, 
	         success : function(t){ 
	        	 $("#here").html(t);     
	                       
	         } , 
	         error : function(){ 
	                   alert('불러오기 실패'); 
	         } 
	  });
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
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="nav_collapse">
						<ul class="nav navbar-nav navbar-right" id="navbar-ul">
							<li><a href="../index.jsp" class="active"> HOME </a></li>
							<li><a href="../searchTest.jsp"> SEARCH </a></li>
							<!--  로그인을 하면 로그아웃이랑 MyPage로 교체 -->
							<li id="mypage"><a href="mypageShowInfo">MYPAGE</a></li>
							<li id="logout"><a href="logout"><span></span>LOGOUT</a></li>
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
								<img src="../Resources/images/jin/mpg/mpgslider01.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider02.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider03.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider04.png">
							</div>
							<div class="item">
								<img src="../Resources/images/jin/mpg/mpgslider05.png">
							</div>
						</div>
					</div>


					<div id="booking_toggle_wrapper" class="subtitle">
						<span class="tab_wrapper"> <a id="btn_toggle_book"
							class="toggle_button" href="bookinfo"> 예약현황 </a>

						</span>
						<span class="tab_wrapper"> <a id="btn_toggle_priceinfo" class="toggle_button active" href="mypage_message.jsp"> 받은 메시지 </a> </span>

						<span class="tab_wrapper"> <a id="btn_toggle_priceinfo"
							class="toggle_button" href="modifyinfo"> 회원정보 수정 </a>
						</span> <span class="tab_wrapper"> <a id="btn_toggle_cancel"
							class="toggle_button" href="mypage_memberout.jsp"> 회원 탈퇴 </a>
						</span>
					</div>
				<!-- 여기부터-->
				<button id="refresh">새로고침</button>
				 <div id="here">
     
  
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