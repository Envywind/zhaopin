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
<script type="text/javascript" language="javascript">
	function clearData() {
		window.inqForm.strKey.value = "";
		window.inqForm.strTYpe.options[0].selected = true;
	}
</script>
<link href="<%=basePath%>/css/table.css" rel="stylesheet"
	type="text/css" />
</head>
<body style="background:#D1EEEE">
	<table width="1100" border="0" align="center" cellpadding="4"
		cellspacing="1" id="table-4">
		<tr>
			<th scope="col">简历ID</th>
			<th scope="col">期望工资</th>
			<th scope="col">个人简介</th>
			<th scope="col">用户id</th>
			<th scope="col">通过与否</th>
		</tr>

		<c:choose>
			<c:when test="${!empty list}">
				<c:forEach items="${list}" var="listMap">
					<tr align="center">
						<td width="7%">${listMap.r_id}</td>
						<td width="6%">${listMap.r_salary}</td>
						<td width="13%">${listMap.r_profile}</td>
						<td width="14%">${listMap.u_id}</td>
						<td width="19%"><input
							onclick="javascript:confirm('简历是否通过？');location='/wanted2/resume/updateResume1.do?r_id=${listMap.r_id}'"
							type="submit" value="通过" /> <input
							onclick="javascript:confirm('简历是否不通过？');location='/wanted2/resume/updateResume2.do?r_id=${listMap.r_id}'"
							type="submit" value="不通过" /></td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr align="center">
					<td colspan="8"><span class="STYLE1">无信息！</span></td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>