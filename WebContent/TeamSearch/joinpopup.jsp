<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String userid = null;
	request.setCharacterEncoding("utf-8");
	if ((String) session.getAttribute("userID") != null) {
		userid = (String) session.getAttribute("userID");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>메시지 보내기</title>	
<link href="../Resources/css/join_css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700|Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

<script>


function closeSelf(){
	
   // document.forms['sendmsg'].submit();
    alert("메시지를 보냈습니다");   
    setTimeout(function(){
        self.close();
    },2000);
}


 
</script>
</head>
 
<body>
	<div class="main">
		<div class="user">
			<img src="../Resources/images/join_images/user.png" alt="">
		</div>
		<div class="login">
			<div class="inset">
				<!-----start-main---->
				
				<form action="sendMessage" method="POST" name="sendmsg" onsubmit="return closeSelf();">
			         <div>
						<span><label>MessageSender</label></span>
						<span><input type="text" class="textbox" name="messageFrom" id="MSGFROM" value ="<%=userid%>" readonly ></span>
					 </div>
					 <div>
						<span><label>MessageReceiver</label></span>
					    <span><input type="text" class="textbox" id="MSGTO" name="messageTo" readonly></span>
					 </div>

					 <br>
					 <div>
						<span><label>메시지 내용</label></span>
						<textarea id="textarea" rows="5" cols="20"  name="messageBody"></textarea>
					 </div>
					<div class="sign">
						<div class="submit">
						  <input type="submit"   value="메시지 보내기"  > 
						  <input type="button" id ="closebtn" value="창 닫기" onClick="self.close()" >
						  
						</div>
					</div>
				</form>
				</div>
			</div>
		<!-----//end-main---->
		</div>

	 
</body>
</html>