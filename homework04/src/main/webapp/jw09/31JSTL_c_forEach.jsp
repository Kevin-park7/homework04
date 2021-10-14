<%@ page contentType="text/html; charset=euc-kr"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--c:forEach : while / for 비교-->
<h3>::c:forEach 이용 구구단 출력</h3>

 1.c:forEach 이용 :5단출력<br/>
<c:forEach var="i" begin="1" end="10" step="1">
5 * ${i} = ${5*i}<br/>
</c:forEach><br/><hr/>

2. 중첩 c:forEach 이용 : 구구단 짝수 출력  <br/>
<c:forEach var="i" begin ="2" end="9" step="2">
	[${i}]단을 출력합니다. <br/>
	<c:forEach var="j" begin ="1" end="10" step="1">
	${i} * ${j} = ${i*j}<br/>
	</c:forEach>	
	<br/>
</c:forEach><hr/>

<h3>3/ index관리 Collection 접근</h3>
<%
	java.util.Vector vector = new java.util.Vector();
	vector.add("A");
	vector.add("B");
	vector.add("C");
	vector.add("D");
	//vector에 제네릭을 쓰지않아서 노란불
	//console확인 후 forEach 와 비교
	System.out.println("============");
	for(int i=0; i<vector.size(); i++){
		System.out.println((String) vector.get(i));
	}
	System.out.println("============");
	for(Object obj : vector){
		System.out.println((String)obj);
	}
	System.out.println("============");	
%>
<%--end > size() 경우 : 출력은? --%>
<c:forEach var="i" items="<%=vector%>" begin ="0" step ="1" end ="10">
	::Vector 저장정보 추출: ${i} <br/>
</c:forEach>

<%--end 생략 / begin 확인 : 출력은 ? --%>
<c:forEach var="i" items="<%=vector%>" begin ="1" step ="1">
	::Vector 저장정보 추출 : ${i} <br/>
</c:forEach>

<%--end 생략/ step 확인 : 출력은 ? --%>
<c:forEach var="i" items="<%=vector%>" begin ="0" step ="2">
	::Vector 저장정보 추출 : ${i} <br/>
</c:forEach>

<%--end < size() 경우 : 출력은 ? --%>
<c:forEach var="i" items="<%=vector%>" begin ="0" step ="1" end ="1">
	::Vector 저장정보 추출 : ${i} <br/>
</c:forEach><hr/>


<h3>4. key = value형식의 map의 value접근</h3><br/>
<%
	java.util.HashMap hasMap = new java.util.HashMap();
	hasMap.put("a","A");
	hasMap.put("b","B");
	hasMap.put("c","C");
	hasMap.put("d","D");
%>

<!-- hashMap 참조하는 Map 정보 i 변수에 저장-->
<c:forEach var="i" items="<%=hasMap%>">
	::HashMap에 저장된 내용은: ${i.key} = ${i.value} <br/>
</c:forEach><br/><hr/>

<h3>5. EL/ c:set, c:if를 동시 사용</h3><br/>
<c:set var="aaa" value="<%=hasMap %>"/>

<c:forEach var="i" items="${aaa}">
	<c:if test="${i.key == 'a'}">
	::key a 의  value : ${i.value}
	</c:if>
</c:forEach>