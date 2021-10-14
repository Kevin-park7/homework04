<%@ page contentType="text/html; charset=euc-kr"%>
<!-- JSTL 사용 : taglib 지시자 설정 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%request.setCharacterEncoding("EUC-KR");%>

<!-- c:if 중첩 if-else 미지원/ 단순 if문 -->
<h3>::JSTL c:if을 사용</h3>
<c:if test="true">
if문 내부 1 <br/>
</c:if>

<c:if test="false">
if문 내부 2 <br/>
</c:if><br/><hr/>

<h3>::Client Form Data 처리</h3>
1.이름 : <%=request.getParameter("name")%><br/>
2.이름 : ${param.name} <br/>

<!-- Single,Double Quote 사용 주의 -->
<c:if test="${param.name == '홍길동'}">
	3.홍길동님 환영합니다. <br/>
</c:if>

<c:if test="${!empty param.name}">
	4.${param.name}님 환영합니다. <br/>
</c:if>


<!-- c:set과 c:if를 이용 / ObjectScope을 정확히 이해하는가? -->
<c:set var="level" value="성인" scope="session"/>
<c:if test="${param.age < 19}">
	<c:set var="level" value="청소년"/>
</c:if>

5.${param.name} 님은 나이 ${param.age} 로 ${level}입니다 <br/>
확인 1 : ${sessionScope.level} <br/>
확인 2 : ${pageScope.level}<br/><hr/>

<!-- Check Box Client Form data : String[] value = request.getParameterValues("sw") -->
<c:if test="${!empty paramValues.sw[0]}">
	6 선택하신 SW : ${paramValues.sw[0]}<br/>
</c:if>
<c:if test="${!empty paramValues.sw[1]}">
	6 선택하신 SW : ${paramValues.sw[1]}<br/>
</c:if>
<c:if test="${!empty paramValues.sw[2]}">
	6 선택하신 SW : ${paramValues.sw[2]}<br/>
</c:if>
<hr/>

<!-- c:choose는 switch 비교이해 -->

<c:choose>
	<c:when test="${param.age > 19}">
		7.${param.name}님은 성인으로 나이 : ${param.age} <br/>
	</c:when>
	<c:when test="${param.age < 18}">
		7.${param.name}님은 청소년으로 나이 : ${param.age} <br/>
	</c:when>
	<c:otherwise>
		7.${param.name}님은 청소년?, 어른? 나이 : ${param.age} <br/>
	</c:otherwise>
</c:choose>


<c:if test="${!empty param.name && !empty param.age}">
	<c:choose>
		<c:when test="${param.age > 19}">
			8.${param.name}님은 성인으로 나이 : ${param.age} <br/>
		</c:when>
		<c:when test="${param.age < 19}">
			8.${param.name}님은 청소년으로 나이 : ${param.age} <br/>
		</c:when>
		<c:otherwise>
			8.${param.name}님은 청소년?, 어른? 나이 : ${param.age} <br/>
		</c:otherwise>
	</c:choose>
</c:if>