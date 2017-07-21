<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${messages}" var="msg">	
		
					
						<div class="msgFormin">
						<p>MessageNum</p>
						<input  id="messageID" class="form-control" value="${msg.messageID}" readonly> <br>
						<p>Message_From</p>
						<textarea id="messageFrom" class="form-control" readonly>${msg.messageFrom}</textarea><br>

						<p>Message Body</p>
						<textarea id="messageBody" class="form-control" readonly>${msg.messageBody} </textarea> <br>  
						
						<button class="messageReply social"> Reply  </button> <button class="messageDelete social"> Delete </button>
						 
						<div class="clear"></div>
						</div>
					
			</c:forEach>
		<%-- 	
	<c:forEach items="${messages}" var="msg">			
<div class="main">
		<div class="login">
			<div class="inset">
				<!-----start-main---->
				<form action="sendMessage" method="POST" name="message">
			         <div>
						<span><label>MessageID</label></span>
						<span><input type="text" class="textbox" name="messageFrom" id="MSGFROM" value ="${msg.messageID}" readonly ></span>
					 </div>
					 <div>
						<span><label>Message_From</label></span>
					    <span><input type="text" class="textbox" id="MSGTO" name="messageTo" value="${msg.messageFrom}" readonly></span>
					 </div>

					 <br>
					 <div>
						<span><label>받은 메시지</label></span>
						<textarea id="textarea" rows="5" cols="20"  name="messageBody" form="usrform"></textarea>
					 </div>
					<div class="sign">
						<div class="submit">
						  <input type="button" onClick="closeSelf()" value="메시지 보내기"  >
						  <input type="button" id ="closebtn" value="창 닫기" onClick="self.close()" >
						  
						</div>
					
					</div>
				</form>
				</div>
			</div>
		<!-----//end-main---->
</div>
</c:forEach> --%>