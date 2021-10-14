<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page import="homework04.UserVO"%>

<%

	UserVO userVO = (UserVO) session.getAttribute("userVO");
	System.out.println("session에 저장된 UserVO 유무확인uuv:" + userVO);


%>

<html>
<head></head>
<body>

	<center>
		<h2>개인정보수정</h2>
	</center>

	<form method='Post' action='/homework04/UpdateUser.jsp'>
		아이디 :&nbsp;&nbsp;&nbsp;<input type='text' name='id' value=<%=userVO.getId()%>><br />
		패스워드 :<input type='text' name='pwd'value=<%=userVO.getPwd()%>><br />
		<p />
		이름 :&nbsp;&nbsp;&nbsp;<input type='text'name='name'value= <%=userVO.getName()%>><br />
		<p />
		성별 :&nbsp;&nbsp;&nbsp;<input type='text'name='sex'value=<%=userVO.getSex()%>><br />
		<p />
		직업 :&nbsp;&nbsp;&nbsp;<input type='text' name='work'value=<%=userVO.getWork()%>><br />
		<p />
		연락처 :<input type='text' name='phone' value=<%=userVO.getPhone()%>><br />
		<p />
		주소 :&nbsp;&nbsp;&nbsp; <input type='text' name='addr'value=<%=userVO.getAddr()%>><br />
		<p />

		<input type='submit' value=전송 /> <input type='reset' value=취소 />

	</form>

</body>
</html>
