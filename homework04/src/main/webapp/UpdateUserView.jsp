<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserVO"%>

<%

	UserVO userVO = (UserVO) session.getAttribute("userVO");
	System.out.println("session�� ����� UserVO ����Ȯ��uuv:" + userVO);


%>

<html>
<head></head>
<body>

	<center>
		<h2>������������</h2>
	</center>

	<form method='Post' action='/homework04/UpdateUser.jsp'>
		���̵� :&nbsp;&nbsp;&nbsp;<input type='text' name='id' value=<%=userVO.getId()%>><br />
		�н����� :<input type='text' name='pwd'value=<%=userVO.getPwd()%>><br />
		<p />
		�̸� :&nbsp;&nbsp;&nbsp;<input type='text'name='name'value= <%=userVO.getName()%>><br />
		<p />
		���� :&nbsp;&nbsp;&nbsp;<input type='text'name='sex'value=<%=userVO.getSex()%>><br />
		<p />
		���� :&nbsp;&nbsp;&nbsp;<input type='text' name='work'value=<%=userVO.getWork()%>><br />
		<p />
		����ó :<input type='text' name='phone' value=<%=userVO.getPhone()%>><br />
		<p />
		�ּ� :&nbsp;&nbsp;&nbsp; <input type='text' name='addr'value=<%=userVO.getAddr()%>><br />
		<p />

		<input type='submit' value=���� /> <input type='reset' value=��� />

	</form>

</body>
</html>
