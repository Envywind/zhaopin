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
<title>公司管理</title>
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
			<form action="/wanted2/system/company/selectByName.do" method="post"
				name="inqForm">
				<td width="500" height="30"><label> 公司名:<input
						name="c_name" type="text" align="center" size="50"
						value="${sessionScope.c_name}" /> <input type="submit"
						name="button" id="button" value="搜索" />
				</label></td>
			</form>
		</tr>
	</table>


	<table width="900" border="0" align="center" cellpadding="4"
		cellspacing="1" id="tabList">
		<tr>
			<th scope="col">公司ID</th>
			<th scope="col">公司名</th>
			<th scope="col">公司密码</th>
			<th scope="col">注册号</th>
			<th scope="col">网站注册者名</th>
			<th scope="col">法人ID</th>
			<th scope="col">注册者ID</th>
			<th scope="col">操作</th>
		</tr>

		<c:choose>
			<c:when test="${!empty list}">
				<c:forEach items="${list}" var="listMap">
					<tr align="center">
						<td width="8%">${listMap.c_id}</td>
						<td width="11%">${listMap.c_name}</td>
						<td width="11%">${listMap.c_pwd}</td>
						<td width="15%">${listMap.c_regcode}</td>
						<td width="15%">${listMap.c_regname}</td>
						<td width="15%">${listMap.c_L_ID}</td>
						<td width="10%">${listMap.c_regID}</td>
						<td width="5%"><a
							href="/wanted2/system/company/update.do?c_id=${listMap.c_id}"
							onclick="javascript:confirm('是否注销指定公司？');"> <img
								src="/wanted2/System/images/record_(delete)_16x16.gif"
								title="注销公司" border="0" />
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