<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script> 
	function call(empno){ //자바스크립트 제공하는 함수 (툴이 설치되어 있으면, 컨트롤 스페이스하면 뜬다.)
		var result=confirm("정말로 삭제하시겠습니까?"); //확인받을 때 사용 ---> '확인'/'취소'가 뜬다.
		// 자료형 없다. (변수의 type이 외부적으로 존재하지 않는다.)
		if(result){ 
			location.href="empDelete?empno="+empno; //서블릿을 요청 -> emp밑의 empDelete를 요청해라.		
		}else{
			alert("삭제가 취소되었습니다.");
		}
	}
	
</script>

</head>
<body>
	<!-- View -->
	<h1 id="suhyun">직원목록</h1>
	<a href="reserve">예약하기로 이동(테스트)</a>
	<br>
	<br>

	<table border="1">
		<tr>
			<!-- table row의 줄임말(한 줄) -->
			<th>id</th>
			<th>name</th>
			<th>type</th>
			<th>phone</th>
			<th>homepage</th>
			<th>open</th>
			<th>close</th>
			<th>holiday</th>
			<th>howtogo</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${placelist}" var="place">
			<!--get할 때 넘어온 emplist에 접근해서 하나하나를 emp로 사용하겠다. -->
			<tr>
				<td><a href="reserve?pid=${place.pid}">${place.pid}</a></td>
				<td>${place.pname}</td>
				<td>${place.ptype}</td>
				<td>${place.pphone}</td>
				<td>${place.phomepage}</td>
				<td>${place.popen}</td>
				<td>${place.pclose}</td>
				<td>${place.pholiday}</td>
				<td>${place.phowtogo}</td>
				
				<!-- <form action="reserve" method="get">
					<td><input type="submit" class="btn btn-success" value="예약하기"></td>colspan:2개를 하나로 합쳐라
					
				</form> -->
				
				<td><button type="button" class="btn btn-success" onclick="location.href='empDelete?empno=${emp.empno}'">삭제</button></td>
				<td><button onclick="call(${emp.empno})">삭제(자바스크립트)</button></td>
			</tr>
		</c:forEach>
	</table>
	<!-- 전체가 묶여있는 주소가 한번에 찍힌다. -->

</body>
</html>