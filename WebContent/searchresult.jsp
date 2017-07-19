<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <table class="table">
      <thead>
        <tr>
          <th> 장소명 </th>
          <th> 시작시간 </th>
          <th> 종료시간 </th>
          <th> 주소 </th>
          <th> 공휴일 </th>
          <th> 분류</th>
      
        </tr>
      </thead>
 <tbody>     
 <c:forEach items="${dtolist}" var="oneitem">
        <tr>
          <td><a href="reserve?pid=${oneitem.pid}" style="color:white;">${oneitem.pname}</a> </td>
          <td> ${oneitem.popen } </td>
          <td> ${oneitem.pclose} </td>
          <td> ${oneitem.doro} </td>
          <td> ${oneitem.pholiday} </td>
          <td> ${oneitem.ptype} </td>
          </tr>
 </c:forEach>
 </tbody>
 </table>