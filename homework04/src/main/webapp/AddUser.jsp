<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="homework04.UserVO" %>   
<%@ page import="homework04.UserDAO" %>


<%
request.setCharacterEncoding("EUC_KR");
//html�� ������ �޾ƿ´�.
System.out.println("servlet  1");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String sex = request.getParameter("sex");
String work = request.getParameter("work");
String phone = request.getParameter("phone");
String addr = request.getParameter("addr");

//UserVO�� �Է������� ������
UserVO userVO = new UserVO();
userVO.setId(id);
userVO.setPwd(pwd);
userVO.setName(name);
userVO.setSex(sex);
userVO.setWork(work);
userVO.setPhone(phone);
userVO.setAddr(addr);

//UserDAO�� SQL�� �������� �� ����� �˷��ش�.
UserDAO addUser = new UserDAO();
addUser.getUser(userVO);

System.out.println("servlet  2");
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
	<%=name%>�� ȸ�������� �����մϴ�.
	<br />
	<%
	request.getSession(true).setAttribute("userVO", userVO);
	%>
	<%
	} else {
	%>
	ȸ�����Կ� �����߽��ϴ�.
	<br />
	<%
	}
	%>

	<p>
	<p>
		<a href='/homework04/FindUserView.jsp'>����������</a>
	<p>
	<p>
		<a href='/homework04/FindUser.jsp'>����������(session)</a>
</body>
</html>















