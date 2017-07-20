<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	
			<c:forEach items="${messages}" var="msg">
					<div class="msgForm">
						<p>Message_From</p>
						<span id="messageFrom"> ${msg.messageTo}</span> <br>
						<p>Date</p>
						<span id="messageDate">${msg.message_Date}</span> <br>
						<p>Message Body</p>
						<span id="messageBody">${msg.messageBody} </span> <br>    
						<button> Reply  </button> <button> Delete </button>
					</div>
			</c:forEach>