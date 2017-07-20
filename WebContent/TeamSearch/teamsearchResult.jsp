<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <table class="table">
      <thead>
        <tr>
          <th> 예약번호 </th>
          <th> 아이디 </th>
          <th> 이름 </th>
          <th> 인원수 </th>
          <th> 날짜 </th>
          <th> 시작시간</th>
          <th> 운동유형</th>
          <th> 같이하기</th>
      
        </tr>
      </thead>
 <tbody>     
 <c:forEach items="${teamlist}" var="oneitem">
        <tr>

          <td>${oneitem.bid}</td>
          <td> ${oneitem.mid } </td>
          <td> ${oneitem.mname} </td>
          <td> ${oneitem.bnum} </td>
          <td> ${oneitem.bdate} </td>
          <td> ${oneitem.bstart} </td>
          <td> ${oneitem.ptype} </td>
          <td> <button id="join" onclick="joinpopup()">같이하기</button> </td>
          </tr>
 </c:forEach>
 </tbody>
 </table>