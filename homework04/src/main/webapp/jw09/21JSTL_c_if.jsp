<%@ page contentType="text/html; charset=euc-kr"%>
<!-- JSTL ��� : taglib ������ ���� -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%request.setCharacterEncoding("EUC-KR");%>

<!-- c:if ��ø if-else ������/ �ܼ� if�� -->
<h3>::JSTL c:if�� ���</h3>
<c:if test="true">
if�� ���� 1 <br/>
</c:if>

<c:if test="false">
if�� ���� 2 <br/>
</c:if><br/><hr/>

<h3>::Client Form Data ó��</h3>
1.�̸� : <%=request.getParameter("name")%><br/>
2.�̸� : ${param.name} <br/>

<!-- Single,Double Quote ��� ���� -->
<c:if test="${param.name == 'ȫ�浿'}">
	3.ȫ�浿�� ȯ���մϴ�. <br/>
</c:if>

<c:if test="${!empty param.name}">
	4.${param.name}�� ȯ���մϴ�. <br/>
</c:if>


<!-- c:set�� c:if�� �̿� / ObjectScope�� ��Ȯ�� �����ϴ°�? -->
<c:set var="level" value="����" scope="session"/>
<c:if test="${param.age < 19}">
	<c:set var="level" value="û�ҳ�"/>
</c:if>

5.${param.name} ���� ���� ${param.age} �� ${level}�Դϴ� <br/>
Ȯ�� 1 : ${sessionScope.level} <br/>
Ȯ�� 2 : ${pageScope.level}<br/><hr/>

<!-- Check Box Client Form data : String[] value = request.getParameterValues("sw") -->
<c:if test="${!empty paramValues.sw[0]}">
	6 �����Ͻ� SW : ${paramValues.sw[0]}<br/>
</c:if>
<c:if test="${!empty paramValues.sw[1]}">
	6 �����Ͻ� SW : ${paramValues.sw[1]}<br/>
</c:if>
<c:if test="${!empty paramValues.sw[2]}">
	6 �����Ͻ� SW : ${paramValues.sw[2]}<br/>
</c:if>
<hr/>

<!-- c:choose�� switch ������ -->

<c:choose>
	<c:when test="${param.age > 19}">
		7.${param.name}���� �������� ���� : ${param.age} <br/>
	</c:when>
	<c:when test="${param.age < 18}">
		7.${param.name}���� û�ҳ����� ���� : ${param.age} <br/>
	</c:when>
	<c:otherwise>
		7.${param.name}���� û�ҳ�?, �? ���� : ${param.age} <br/>
	</c:otherwise>
</c:choose>


<c:if test="${!empty param.name && !empty param.age}">
	<c:choose>
		<c:when test="${param.age > 19}">
			8.${param.name}���� �������� ���� : ${param.age} <br/>
		</c:when>
		<c:when test="${param.age < 19}">
			8.${param.name}���� û�ҳ����� ���� : ${param.age} <br/>
		</c:when>
		<c:otherwise>
			8.${param.name}���� û�ҳ�?, �? ���� : ${param.age} <br/>
		</c:otherwise>
	</c:choose>
</c:if>