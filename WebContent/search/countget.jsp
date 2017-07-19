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
					<c:set var="name" value="${count_info[status.index]}" />
					<c:choose>
						<c:when test="${name < 30}">
							<!-- 인원수 30명 미만 예약가능 -->
							<td><input type="submit" class="yellow" id="reservebtn"
								value="예약하기" onclick="call('${time}')"
								style="background-color: #000000"></td>
						</c:when>

						<c:otherwise>
							<!-- 인원수 30명부터 예약 불가능  -->

							<td><input type="button" class="red" id="reservebtn"
								value="예약불가" disabled="disabled"
								style="background-color: #000000"></td>
						</c:otherwise>

					</c:choose>
				</tr>
			</c:forEach>

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
