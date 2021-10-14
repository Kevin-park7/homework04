<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="homework04.UserVO" %>   
<%@ page import="homework04.UserDAO" %>


<%
request.setCharacterEncoding("EUC_KR");
//html의 정보를 받아온다.
System.out.println("servlet  1");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String sex = request.getParameter("sex");
String work = request.getParameter("work");
String phone = request.getParameter("phone");
String addr = request.getParameter("addr");

//UserVO로 입력정보를 보낸다
UserVO userVO = new UserVO();
userVO.setId(id);
userVO.setPwd(pwd);
userVO.setName(name);
userVO.setSex(sex);
userVO.setWork(work);
userVO.setPhone(phone);
userVO.setAddr(addr);

//UserDAO가 SQL에 정보공유 후 결과를 알려준다.
UserDAO addUser = new UserDAO();
addUser.getUser(userVO);

System.out.println("servlet  2");
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
	<%=name%>님 회원가입을 축하합니다.
	<br />
	<%
	request.getSession(true).setAttribute("userVO", userVO);
	%>
	<%
	} else {
	%>
	회원가입에 실패했습니다.
	<br />
	<%
	}
	%>

	<p>
	<p>
		<a href='/homework04/FindUserView.jsp'>내정보보기</a>
	<p>
	<p>
		<a href='/homework04/FindUser.jsp'>내정보보기(session)</a>
</body>
</html>















