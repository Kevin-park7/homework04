<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserVO"%>
<%@ page import="homework04.UserDAO"%>


<%
request.setCharacterEncoding("EUC_KR");
//html�� ������ �޾ƿ´�.
System.out.println("servlet  1");
String id = request.getParameter("id");
String name = request.getParameter("name");
String sex = request.getParameter("sex");
String work = request.getParameter("work");
String phone = request.getParameter("phone");
String addr = request.getParameter("addr");

//UserVO�� �Է������� ������





	UserVO userVO = new UserVO();
	userVO.setId(id);
	userVO.setName(name);
	userVO.setSex(sex);
	userVO.setWork(work);
	userVO.setPhone(phone);
	userVO.setAddr(addr);
	
	UserDAO updateUser = new UserDAO();
	updateUser.getupdateUser(userVO);


//UserDAO�� SQL�� �������� �� ����� �˷��ش�.
//UserDAO setupdateUser = new UserDAO();
//setupdateUser.getUser(userVO);

System.out.println(userVO);
//��� ���ȭ
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ������</h2>


	<%
	if (userVO.isActive()) {
	%>
	<%=name%>�� �������� ������ �Ϸ�Ǿ����ϴ�.
	<br />
	<%
	request.getSession(true).setAttribute("userVO", userVO);
	request.setAttribute("userVO", userVO);
	System.out.println("session�� ����� UserVO ����Ȯ��uu:" + userVO);


	%>
	<%
	} else {
	%>
	�������� ������ �����Ͽ����ϴ�.
	<br />
	<%
	}
	%>

	<p>
	<p>
		<a href='/homework04/AddUserView.jsp'>�ڷΰ���</a>
</body>
</html>




