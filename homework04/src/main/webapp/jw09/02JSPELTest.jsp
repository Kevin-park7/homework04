<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.util.*"%>

<h3>4. 색인(.,[]) 연산자 사용</h3><p/>
<%--아래 내용은 Servlet Controller 가 화면구성 위해 ObjectScope에 저장한것으로 생각 --%>
<%
// 1. page ObjectScope 저장
pageContext.setAttribute("abc", new String("page ObjectScope 저장된 문자열"));

// 2. request ObjectScope 저장
request.setAttribute("abc", new String("request ObjectScope 저장된 문자열"));

// 3. session ObjectScope (size ==0인) ArrayList에 저장
session.setAttribute("abc", new ArrayList());

// 4. Application ObjectScope 값을 갖는 HashMap 저장
HashMap hashMap = new HashMap();
hashMap.put("zzz", new String("HashMap 저장된 문자열"));
application.setAttribute("abc",hashMap);
%>

<!-- 
	::EL : 자체연산자 . 와 []연산자 제공
	::EL : ObjectScope 을 사용 할 수 있는 자체적으로 implicit Object 제공
	page		==>pageScope,
	request		==>requestScope
	session		==>sessionScope
	application	==>applicationScope
 -->
 
 <h5>1.page ObjectScope 접근</h5>
 	ㅇ${pageScope.abc} = ${pageScope["abc"]}
 	
 <h5>2.request ObjectScope 접근</h5>
 	ㅇ${requestScope.abc} = ${reqeustScope["abc"]}
 	
 <h5>3.session ObjectScope 접근 : 저장된 ArrayList empty 유무</h5>
 	ㅇ${empty sessionScope.abc} = ${empty sessionScope["abc"]}
 	
 <h5>4.1 session n ObjectScope 접근 : 저장된 ArrayList empty 유무</h5>
 	ㅇ${empty sessionScope.def} = ${empty sessionScope["def"]}
 	
 <h5>4.2 session ObjectScope 접근</h5>
 	ㅇ${sessionScope.def[0]} = ${sessionScope["def"][0]}
 	
 <h5>5.1 application ObjectScope접근 : 저장된 HashMap empty 유무</h5>
 	ㅇ${empty application.abc} = ${empty applicationScope["abc"]}
 
 <h5>5.2 application ObjectScope접근</h5>
 	ㅇ${applicationScope.abc.zzz} = ${applicationScope["abc"].zzz}<br/><br/><br/>
 
 <h3>Object Scope의 영역을 지정하지 않고 EL을 사용 abc 접근시<br/>>
 	어떤 ObjectScope값이 추출되는지확인하자 <br/><br/>
 	어떤 ObjectScope의 내용인가 : ${abc}</h3>		