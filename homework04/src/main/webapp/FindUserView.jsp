<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<html>
<head></head>
<body>

	<center><h2>개인정보확인 </h2></center>

	<form method='Post' action='/homework04/FindUser.jsp'>
	
		Id &nbsp;&nbsp;&nbsp;<input type='text' name='id'><br/>
		pwd <input type='text' name='pwd'><br/><p/>
		
		<input type='submit' value=전송 />
		<input type='reset' value=취소 />

	</form>

</body>
</html>
