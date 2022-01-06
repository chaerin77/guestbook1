<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>

<%
	
	//Dao 메모리에 올리기
	/*GuestbookDao guestbookDao = new GuestbookDao();
	
	//요청한 no값을 갖고있는 데이터를 db에서 가져오기
	GuestbookVo gvo = guestbookDao.getGuest(Integer.parseInt(request.getParameter("no")));

	System.out.println(gvo.toString());*/

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		비밀번호 <input type="password" name="password" value="">
		<button type="submit">확인</button><br><!-- 확인을 누르면 delete.jsp 실행 -->
		<a href="./addList.jsp">메인으로 돌아가기</a>
	</form>
</body>
</html>