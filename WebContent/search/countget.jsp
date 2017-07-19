<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
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
					<td>${count_info[status.index]}</td>
					<!-- 수정해야한다. -->
					<td><input type="submit" class="yellow" id="reservebtn"
						value="예약하기" onclick="call('${time}')"></td>
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
		<input type="text" name="sel_pid" value="${placeinfo.pid}"></input> <input
			type="text" name="sel_place" value="${placeinfo.pname}"></input>
		<!-- <input type="text" id="select_time" name="select_time">시간</input> -->
		<textarea type="text" cols="1" rows="1" id="select_time"
			name="select_time"></textarea>
	</div>

</body>
