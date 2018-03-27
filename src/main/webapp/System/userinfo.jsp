<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户管理</title>
<link href="<%=basePath%>/System/css/sysAdm.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" language="javascript">
	function clearData() {
		window.inqForm.strKey.value = "";
		window.inqForm.strTYpe.options[0].selected = true;
	}
</script>
</head>
<body>
	<br />
	<table width="900" border="0" align="center" cellpadding="4"
		cellspacing="0" id="tabInq">

		<tr align="left" valign="top">
			<form action="/wanted2/system/user/selectByID.do" method="post" name="inqForm">
				<td width="500" height="30"><label> 用户ID:<input
						name="u_id" type="text" align="center" size="50" value="${sessionScope.u_id}" /> <input
						type="submit" name="button" id="button" value="搜索" />
				</label></td>
			</form>
		</tr>
	</table>


	<table width="900" border="0" align="center" cellpadding="4"
		cellspacing="1" id="tabList">
		<tr>
			<th scope="col">用户ID</th>
			<th scope="col">用户姓名</th>
			<th scope="col">用户密码</th>
			<th scope="col">用户性别</th>
			<th scope="col">联系电话</th>
			<th scope="col">电子邮件</th>
			<th scope="col">用户类别</th>
			<th scope="col">账号状态</th>
			<th scope="col">操作</th>
		</tr>

		<c:choose>
			<c:when test="${!empty list}">
				<c:forEach items="${list}" var="listMap">
					<tr align="center">
						<td width="8%">${listMap.u_id}</td>
						<td width="11%">${listMap.u_name}</td>
						<td width="11%">${listMap.u_pwd}</td>
						<td width="8%">${listMap.u_sex}</td>
						<td width="15%">${listMap.u_tel}</td>
						<td width="15%">${listMap.u_mail}</td>
						<td width="8%">${listMap.u_role}</td>
						<td width="8%">${listMap.u_static}</td>
						<td width="5%"><a
							href="/wanted2/system/user/delete.do?u_id=${listMap.u_id}"
							onclick="javascript:confirm('是否删除指定用户？');"> <img
								src="/wanted2/System/images/record_(delete)_16x16.gif"
								title="删除用户" border="0" />
						</a></td>
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