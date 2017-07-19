<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Sign Up SportSpot!!</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Flat Sign Up Form Responsive Widget Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link href="Resources/css/signup.css" rel="stylesheet" type="text/css" media="all">
<link href="Resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<!-- //css files -->
<!-- online-fonts -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Raleway+Dots' rel='stylesheet' type='text/css'>
</head>
<body>
<!--header-->
	<div class="header-w3l">
		<br><br><h1>Sign up for SportSpot</h1>
	</div>
<!--//header-->
<!--main-->
<div class="main-agileits">
	<h2 class="sub-head">Wellcome to SportSpot </h2>
		<div class="sub-main">	
			<form action="signup" method="post">
				<input placeholder="ID" name="ID" class="name" type="text" required>
					<br>
				<input placeholder="Name" name="Name" class="name2" type="text" required>
					<br>

				<input placeholder="Email" name="mail" class="mail" type="text" required>
					<br>
				<input  placeholder="Password" name="Password" class="pass" type="password" required>
					<br>
			<!-- 	<input  placeholder="Confirm Password" name="Password" class="pass" type="password" required>
					<br> -->
				<div id="gender">
				Gender
				<input type="radio" name="sex" value="male" checked> Male
				<input type="radio" name="sex" value="female"> Female
					<br>
				</div>	
				<div id="interest">
				Choose Interest <br>
				<input type="radio" name="interest" value="football" checked> Football
				<input type="radio" name="interest" value="baseball"> Baseball
				<input type="radio" name="interest" value="gateball"> Gateball<br>
				<input type="radio" name="interest" value="cycling"> Cycling
				<input type="radio" name="interest" value="achery"> Achery
				<input type="radio" name="interest" value="swimming"> Swimming<br>
					<br>
				</div>	
				<!-- <input  type="radio" name = "sex" value = "male"> 남자 <input  type="radio" name="sex" value = "male"> 여자<br> -->
				
				<input id = "reset" type="reset" value="reset">
				<input type="submit" value="sign up">
			</form>
		</div>
		<div class="clear"></div>
</div>
<!--//main-->

</body>
</html>