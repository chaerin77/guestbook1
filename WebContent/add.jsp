<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao"%>

<!-- 주소창에 ?name=오징어2&password=1212.... 이렇게 치면 등록이되게끔 추가되려면 추가하는메소드있어야함 -->

<%
	//Dao 메모리에 올리기 
	GuestbookDao guestbookDao = new GuestbookDao();	

	// int no = Integer.parseInt(request.getParameter("no"));
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	//String regDate = request.getParameter("reg_date");

	GuestbookVo addgvo = new GuestbookVo(name, password, content);
	guestbookDao.addGuest(addgvo);
	
	response.sendRedirect("./addList.jsp");
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>