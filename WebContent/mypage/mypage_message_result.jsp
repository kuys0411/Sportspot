<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
			<c:forEach items="${messages}" var="msg">
					<div class="msgForm">
						<p>MessageNum</p>
						<span id="messageDate">${msg.messageID}</span> <br>
						<p>Message_From</p>
						<span id="messageFrom"> ${msg.messageFrom}</span> <br>

						<p>Message Body</p>
						<span id="messageBody">${msg.messageBody} </span> <br>    
						<button class="messageReply"> Reply  </button> <button class="messageDelete"> Delete </button>
					</div>
			</c:forEach>