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

function close(){
	self.close();
}
<%-- 
	
	$(document).ready(function(){
		$('#submitBtn').on('click',function(){
			alert("press submitBtn");
			$.ajax({
				url:"http://localhost:8888/Project/sendMessage",
				type:'POST',
				data:{
					messageFrom : <%=userid%>,
					messageTo:$('#MSGTO').val(),
					messageBody : $('#textarea').val()
				},
				success : function(t){
					alert('메세지 전송에 성공');
					close();
				},
				error : function(){
					alert('메세지 전송에 실패');
				}
			});
		});
		
		$('#closebtn').on('click',function(){
			close();
		});
	}); --%>
	
/* 	
	$('#date_btn').on('click',function(){ 
        alert("데이터 전송~ ^^*"); 
     $.ajax({ 
             url:'countget', //가져오고자하는 서버페이지 주소를 넣는다. 
             type:'get', //데이터를 서버로 전송하게 된다. 
             data:{ 
          	   sel_pid: $('#sel_pid').val(),
          	   sel_date: $('#select_date').val()  //에디터박스의 아이디를 넣으면 해당 에디터박스의 데이터를 보내준다.
             } , 
             success : function(t){ 
                           alert('성공!' + t);
                           
                           $("#here").html(t);
                       
             } , 
             error : function(){ 
                       alert('실패 ㅠㅠ'); 
             } 
      });
	});  */
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
				<form action="/Project/sendMessage" method="POST">
			         <div>
						<span><label>Message_From</label></span>
						<span><input type="text" class="textbox" name="messageFrom" id="active" value ="<%=userid%>" readonly ></span>
					 </div>
					 <div>
						<span><label>Message_To</label></span>
					    <span><input type="text" class="textbox" id="MSGTO" name="messageTo" readonly></span>
					 </div>

					 <br>
					 <div>
						<span><label>메시지</label></span>
						<textarea id="textarea" rows="5" cols="20"  name="messageBody" form="usrform"></textarea>
					 </div>
					<div class="sign">
						<div class="submit">
						  <input type="submit" onClick="window.close()" value="메시지 보내기"  >
						  <input type="button" id ="closebtn" value="창 닫기" onClick="window.close()" >
						  
						</div>
					
					</div>
				</form>
				</div>
			</div>
		<!-----//end-main---->
		</div>

	 
</body>
</html>