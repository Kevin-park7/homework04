<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserVO"%>
<%@ page import="homework04.UserDAO"%>


<%
request.setCharacterEncoding("EUC_KR");
//html의 정보를 받아온다.
System.out.println("servlet  1");
String id = request.getParameter("id");
String name = request.getParameter("name");
String sex = request.getParameter("sex");
String work = request.getParameter("work");
String phone = request.getParameter("phone");
String addr = request.getParameter("addr");

//UserVO로 입력정보를 보낸다





	UserVO userVO = new UserVO();
	userVO.setId(id);
	userVO.setName(name);
	userVO.setSex(sex);
	userVO.setWork(work);
	userVO.setPhone(phone);
	userVO.setAddr(addr);
	
	UserDAO updateUser = new UserDAO();
	updateUser.getupdateUser(userVO);


//UserDAO가 SQL에 정보공유 후 결과를 알려준다.
//UserDAO setupdateUser = new UserDAO();
//setupdateUser.getUser(userVO);

System.out.println(userVO);
//결과 출력화
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>


	<%
	if (userVO.isActive()) {
	%>
	<%=name%>님 개인정보 수정이 완료되었습니다.
	<br />
	<%
	request.getSession(true).setAttribute("userVO", userVO);
	request.setAttribute("userVO", userVO);
	System.out.println("session에 저장된 UserVO 유무확인uu:" + userVO);


	%>
	<%
	} else {
	%>
	개인정보 수정에 실패하였습니다.
	<br />
	<%
	}
	%>

	<p>
	<p>
		<a href='/homework04/AddUserView.jsp'>뒤로가기</a>
</body>
</html>




