<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserVO"%>
<%@ page import="homework04.UserDAO"%>


<%
request.setCharacterEncoding("EUC_KR");

System.out.println("servlet  1");
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");

UserVO userVO = (UserVO) session.getAttribute("userVO");
System.out.println("session�� ����� UserVO ����Ȯ��:" + userVO);

if (!(id == null || id.equals(""))) {

	userVO = new UserVO();
	userVO.setId(id);
	userVO.setPwd(pwd);

	UserDAO findUser = new UserDAO();
	userVO = findUser.getfind(id, pwd);
}
System.out.println("servlet  2");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h2>Login ȭ��</h2>

	<%
	if (userVO.isActive()) {
	%>
	<%=userVO.getName()%>�� ȯ���մϴ�.<br/> 
	�̸� :<%=userVO.getName()%><br /> ���� :<%=userVO.getSex()%><br />
	���� :<%=userVO.getWork()%><br /> ����ó :<%=userVO.getPhone()%><br /> �ּ�
	:<%=userVO.getAddr()%><br />
	<%
	session.setAttribute("userVO", userVO);
	%>

	<%
	} else {
	%>
	login ���� id,pwd�� Ȯ���ϼ���.
	<%
	}
	%>

	<p>
	<p>
		<a href='/homework04/FindUser.jsp'>�ڷ�</a>
	<p>
	<p>
		<a href='/homework04/UpdateUserView.jsp'>����������</a>
</body>
</html>




