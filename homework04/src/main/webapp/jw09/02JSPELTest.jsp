<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.util.*"%>

<h3>4. ����(.,[]) ������ ���</h3><p/>
<%--�Ʒ� ������ Servlet Controller �� ȭ�鱸�� ���� ObjectScope�� �����Ѱ����� ���� --%>
<%
// 1. page ObjectScope ����
pageContext.setAttribute("abc", new String("page ObjectScope ����� ���ڿ�"));

// 2. request ObjectScope ����
request.setAttribute("abc", new String("request ObjectScope ����� ���ڿ�"));

// 3. session ObjectScope (size ==0��) ArrayList�� ����
session.setAttribute("abc", new ArrayList());

// 4. Application ObjectScope ���� ���� HashMap ����
HashMap hashMap = new HashMap();
hashMap.put("zzz", new String("HashMap ����� ���ڿ�"));
application.setAttribute("abc",hashMap);
%>

<!-- 
	::EL : ��ü������ . �� []������ ����
	::EL : ObjectScope �� ��� �� �� �ִ� ��ü������ implicit Object ����
	page		==>pageScope,
	request		==>requestScope
	session		==>sessionScope
	application	==>applicationScope
 -->
 
 <h5>1.page ObjectScope ����</h5>
 	��${pageScope.abc} = ${pageScope["abc"]}
 	
 <h5>2.request ObjectScope ����</h5>
 	��${requestScope.abc} = ${reqeustScope["abc"]}
 	
 <h5>3.session ObjectScope ���� : ����� ArrayList empty ����</h5>
 	��${empty sessionScope.abc} = ${empty sessionScope["abc"]}
 	
 <h5>4.1 session n ObjectScope ���� : ����� ArrayList empty ����</h5>
 	��${empty sessionScope.def} = ${empty sessionScope["def"]}
 	
 <h5>4.2 session ObjectScope ����</h5>
 	��${sessionScope.def[0]} = ${sessionScope["def"][0]}
 	
 <h5>5.1 application ObjectScope���� : ����� HashMap empty ����</h5>
 	��${empty application.abc} = ${empty applicationScope["abc"]}
 
 <h5>5.2 application ObjectScope����</h5>
 	��${applicationScope.abc.zzz} = ${applicationScope["abc"].zzz}<br/><br/><br/>
 
 <h3>Object Scope�� ������ �������� �ʰ� EL�� ��� abc ���ٽ�<br/>>
 	� ObjectScope���� ����Ǵ���Ȯ������ <br/><br/>
 	� ObjectScope�� �����ΰ� : ${abc}</h3>		