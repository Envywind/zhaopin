 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="<%=basePath%>/css/table.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
		<table border="1" align="center"  width="800px" cellspacing="0" name="table1">
			<tr>
				<td>
				</td>
				<td>
					简历编号
				</td>
				<td>
					提交人
				</td>
				<td>
					公司名
				</td>
				<td>
					状态
				</td>
			</tr>
			<c:forEach items="${saveList}" var="a" varStatus="num">
				<tr>
					<td>
					  ${num.count}
					</td>
					<td>
						<c:out value="${a.r_id}" default="　" />
					</td>
					<td>
						<c:out value="${a.u_id}" default="　" />
					</td>
					<td>
						<c:out value="${a.c_id}" default="　" />
					</td>
					<td>
					<c:choose>
						<c:when test="${a.r_static == 0}">未处理</c:when>
						<c:when test="${a.r_static == 1}">已通过</c:when>
						<c:when test="${a.r_static == 2}">未通过</c:when>
					</c:choose>
					</td>
				</tr>
			</c:forEach>
		</table>
</body>
</html>