<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%
	//다오 메모리에 올리기
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//guestbookList 가져오기
	List<GuestbookVo> guestbookList = guestbookDao.getList(); //메소드써서 리스트갖고온걸 GuestbookVo만 담기는 리스트에 넣음
	
	//테스트 db에서 갖고온 정보 잘 뿌려지나
	System.out.println(guestbookList.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 등록폼 영역 -->
	<!-- form으로 감싸주기 submit! , action설정중요 -->
	<form action="./add.jsp" method="get">
		<table border="1" width="500px"><!-- css로 처리해줘야하는데 지금 그냥 html에서쓰기로함  -->
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="text" name="password" value=""></td>
			</tr>
			
			<tr>
				<td colspan="4"> <!-- 칸 합치기 -->
					<textarea name="content" cols="66" rows="5"></textarea>
				</td>
			</tr>
			
			<tr>
				<td colspan="4">
					<button type="submit">글작성</button>
				</td>
			</tr>
		</table>
	</form>
	
	<!-- <input type="checkbox">
	<input type="submit">
	<input type="text">
	<input type="date">
	<input type="number">
	<input type="radio"> -->
	
	<br>
	<!-- 등록폼 영역 -->
	
	<!-- 리스트 영역 -->
	<%for(int i=0; i<guestbookList.size(); i++){
	%>
		<table border="1" width="500px">
		<tr>
			<td><%=guestbookList.get(i).getNo() %></td>
			<td><%=guestbookList.get(i).getName()%></td>
			<td><%=guestbookList.get(i).getRegDate()%></td>
			<td><a href="./deleteForm.jsp?no=<%=guestbookList.get(i).getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4">
				<%=guestbookList.get(i).getContent()%>
				<br>
			</td>
		</tr>
		</table>
		<br>
	<% 	
	}
	%>

	<!-- 리스트 영역 -->
	
</body>
</html>