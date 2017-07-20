<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<table class="table">
상세한 정보를 확인하고 장소에 예약하려면 장소명을 클릭하세요!
	<thead>
		<tr>
			<th style="width: 66px;">분류</th>
			<th>장소명</th>
			<th>시작시간</th>
			<th>종료시간</th>
			<th>주소</th>
			<th>공휴일</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${dtolist}" var="oneitem">
			<tr>
				<td>${oneitem.ptype}</td>
				<td ><a href="reserve?pid=${oneitem.pid}" style="color:white; font-weight:bold;">${oneitem.pname}</a></td>
				<td>${oneitem.popen }</td>
				<td>${oneitem.pclose}</td>
				<td>${oneitem.doro}</td>
				<td>${oneitem.pholiday}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>