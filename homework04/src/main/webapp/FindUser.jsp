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
System.out.println("session에 저장된 UserVO 유무확인:" + userVO);

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

	<h2>Login 화면</h2>

	<%
	if (userVO.isActive()) {
	%>
	<%=userVO.getName()%>님 환영합니다.<br/> 
	이름 :<%=userVO.getName()%><br /> 성별 :<%=userVO.getSex()%><br />
	직업 :<%=userVO.getWork()%><br /> 연락처 :<%=userVO.getPhone()%><br /> 주소
	:<%=userVO.getAddr()%><br />
	<%
	session.setAttribute("userVO", userVO);
	%>

	<%
	} else {
	%>
	login 실패 id,pwd를 확인하세요.
	<%
	}
	%>

	<p>
	<p>
		<a href='/homework04/FindUser.jsp'>뒤로</a>
	<p>
	<p>
		<a href='/homework04/UpdateUserView.jsp'>내정보수정</a>
</body>
</html>




