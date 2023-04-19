<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기</title>
  	<link rel="stylesheet" href="/css/find.css">
</head>
<body>
    <h1>비밀번호 찾기</h1>
    <form id="findIdForm" method="post" action="/member/findPw">
        <input type="text" id="member_id" name="member_id" placeholder="ID" value="${param.member_id}" autocomplete="off"><br>
        <input type="text" id="member_email" name="member_email" placeholder="Email" value="${param.member_email}" autocomplete="off"><br>
        <input type="submit" value="비밀번호 찾기">
    </form>
    <div id="forgot-passdiv"><a id="findID" href="/member/login" >로그인</a></div><br>
    <br>
     <c:if test="${not empty pw}">
        <label style="color:red;">비밀번호는 ${pw} 입니다.</label>
    </c:if>
    <c:if test="${error}">
        <p style="color:red;">일치하는 회원 정보를 찾을 수 없습니다.</p>
    </c:if>
</body>
</html>