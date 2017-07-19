<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>Login SportSpot!!</title>
<!-- Custom Theme files -->
<link href="Resources/css/login.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Square login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--Google Fonts-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

if(${loginCheckResult} == 0){
	alert("로그인 아이디를 다시 확인해주세요.(없는 계정입니다)");
}

else if(${loginCheckResult} == 2){
	alert("로그인 비밀번호를 다시 확인해주세요.");
}

</script>

</head>
<body>
<!--header start here-->
<div class="login-form">
			<div class="top-login">
				<span><img src="Resources/images/SOO/loginImages/group.png" alt=""/></span>
			</div>
			<h1>Login</h1>
			<div id="loginMsg"></div>
			<div class="login-top">
			
			<form action="login" method="post">
				<div class="login-ic">
					<i ></i>
					<input type="text" name = "id" value="User name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User name';}" required/>
					<div class="clear"> </div>
				</div>
				<div class="login-ic">
					<i class="icon"></i>
					<input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'password';}" required/>
					<div class="clear"> </div>
				</div>
			
				<div class="log-bwn">
					<input type="submit"  value="Login" >
				</div>
				
				</form>
				<button id="signup" onclick="location.href='signup.jsp'">Sign Up</button>
 <%-- 				<button id = "signup">login 상태 ${loginCheckResult} </button>
 				<script>alert(${loginCheckResult})</script> --%>
 			</div>
			
</div>		
<!--header start here-->
</body>
</html>