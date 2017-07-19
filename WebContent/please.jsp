<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>please</title>
</head>
<body>



<table>
<c:forEach items="${dtolist}" var="search">
        <tr>
          <td> ${search.pname} </td>
          <td> ${search.popen } </td>
          <td> ${search.pclose} </td>
          <td> ${search.doro} </td>
          <td> ${search.pholiday} </td>
          <td> ${search.ptype} </td>
          </tr>
</c:forEach>
</table>


</body>
</html>