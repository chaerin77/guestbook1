<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="java.util.List" %>

<%

	//Dao 메모리에 올리기
	GuestbookDao guestbookDao = new GuestbookDao();
	
	//요청한 값 no int형으로 바꿔주기
	int no = Integer.parseInt(request.getParameter("no"));
	
	//요청한 no값을 갖고있는 데이터를 db에서 가져오기
	GuestbookVo gvo = guestbookDao.getGuest(no);
	System.out.println(gvo.toString()); //확인용
	
	
	//파라미터 값 - 비밀번호 받아오기
	
	String password = request.getParameter("password");
	
	//입력한 비밀번호의 값이 gvo의 비밀번호 값과 같으면 deleteGuest(int no)메소드 사용해서 삭제
	if(password.equals(gvo.getPassword())){
		guestbookDao.deleteGuest(no);
	}else{
		
	}
	
		
	/*
	//패스워드가 _인 데이터들을 삭제해주는 메소드 필요함-Dao메모리에 올리고 메소드만들어주기
	GuestbookDao guestbookDao = new GuestbookDao();

	//패스워드가 _인 데이터 raw 갖고오기 -이거 deleteForm에서 getguest메소드만든거써서 해주기..그냥 이거전제지우자
	 List<GuestbookVo> gvo = guestbookDao.getList();
	 System.out.println(gvo.toString());
	
	//deleteForm 파라미터 값 받아오기
	String password = request.getParameter("password");

	//패스워드가_인 데이터의 패스워드값 가져오기 gvo.get(0).getPassword()
	
	//가져온 패스워드값(raw의 패스워드값)이 입력한 패스워드값과 같으면 삭제하기 조건
	if(password.equals(gvo.get(0).getPassword())){
		guestbookDao.deleteGuest(password);
	}else {
		
	}*/
	
	response.sendRedirect("./addList.jsp");
%>


<!-- 패스워드가 _인 데이터들을 삭제해주는 메소드필요함 -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>