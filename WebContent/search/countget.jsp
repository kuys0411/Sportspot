<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<!-- <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="google-site-verification"
	content="YHkzOS5N5M9qkZTIGtDDfuKidQhuMuSj02txDAxSlxg" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>예약페이지</title>
<link rel="shortcut icon"
	href='http://www.seoul-escape.com/static/image/favicon.ico'
	type="image/x-icon">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width,
                               initial-scale=1.0,
                               maximum-scale=1">
<meta name="title" content="Seoul Escape Room">
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/CACHE/css/58f590e8ac6c.css"
	type="text/css" />
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/reservation.css"
	type="text/css" />
<link href="http://www.seoul-escape.com/static/css/datepicker.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/c546a5c802e8.js"></script>
<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/38f6e66c6208.js"></script>

<script type="text/javascript"
	src="http://www.seoul-escape.com/static/CACHE/js/da0caed938c7.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAA3t7a2pTWqsB_QnkLNfxdmiGxgXL045g"></script>
<link rel="stylesheet"
	href="http://www.seoul-escape.com/static/css/contact.css"
	type="text/css" />
	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->


</head>
<body>

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
													<td>${count_info[status.index]}</td> <!-- 수정해야한다. -->
													<td><input type="submit" class="yellow"
														id="reservebtn" value="예약하기" onclick="call('${time}')"></td>
												</tr>
											</c:forEach>

											<!-- <tr>
												<td>07:00</td>
												<td>20</td>
												<td><a class="red" href="#">예약불가</a></td>
											</tr> -->
										</tbody>
									</table>
									
									<div style="visibility: hidden" id="hidden"> 
										<input type="text" name="sel_pid" value="${placeinfo.pid}"></input>
										<input type="text" name="sel_place" value="${placeinfo.pname}"></input>
										<!-- <input type="text" id="select_time" name="select_time">시간</input> -->
										<textarea type="text" cols="1" rows="1" id="select_time" name="select_time"></textarea>
									</div>  

</body>
