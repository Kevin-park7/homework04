<%@ page contentType="text/html; charset=euc-kr"%>
<!-- EL(Expression Language) : JSP Spec 2.0지원 -->
<!-- page 지시자 속성 isELIgnored : EL Notation 사용유무-->
<%@ page isELIgnored="false"%>


<%-- Expression Tag / Expression language 비교이해--%>
<%= "##### Expression tag표현 ###" %> <br/>
문자 :<%="홍길동"%> <br/>
숫자 :<%=1234%><br/><hr/><br/>

<%--EL Notation : ${표현식} --%>
${"##### Expression Language로 표현/ Expression Tag와 비교이해 #####"}<br/>
문자:${"홍길동"}<br/>
숫자:${1234}<br/><hr/><br/>

<h3>1. 기본적 산술,논리,관계연산자 사용</h3><p/>
숫자+숫자 : ${1+2} <br/>
문자+숫자 : ${"1"+2} <br/>

<h4>expression tag 사용 : 문자*숫자 <%=Integer.parseInt("1")+2 %></h4>

<!-- 주석을 풀면 java.lang,NumberFormatException 발생 : Exception 발생 이유 ? -->
<%--문자*숫자 : ${"홍"*3}--%>

10==10 : ${10==10}<br/>
10>=1 : ${10>=1} <br/>
!true : ${!true}<br/><hr/><br/>

<h3>2.조건 연산자 사용</h3><p/>
조건?true : false = ${10 > 100 ? "10이 100보다 크다 true" : "10이 100보다 작다  false"}
<br/><hr/><br/>

<h3>3.empty 연산자 사용</h3><p/>
empty null : ${empty null}<br/>
empty " " : ${empty " "}<br/>
empty "":${empty ""}&nbsp;&nbsp;&nbsp; null String을 이해하자 String str = new String()