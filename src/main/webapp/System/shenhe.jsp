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
<title>审核</title>
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

	<table width="1100" border="0" align="center" cellpadding="4"
		cellspacing="1" id="tabList">
		<tr>
			<th scope="col">公司ID</th>
			<th scope="col">公司名</th>
			<th scope="col">注册号</th>
			<th scope="col">营业执照</th>
			<th scope="col">法人身份证</th>
			<th scope="col">网站注册者名</th>
			<th scope="col">法人ID</th>
			<th scope="col">注册者ID</th>
			<th scope="col">操作</th>
		</tr>

		<c:choose>
			<c:when test="${!empty list}">
				<c:forEach items="${list}" var="listMap">
					<tr align="center">
						<td width="7%">${listMap.c_id}</td>
						<td width="6%">${listMap.c_name}</td>
						<td width="13%">${listMap.c_regcode}</td>
						<td width="14%">${listMap.c_license}</td>
						<td width="14%">${listMap.c_L_IDpic}</td>
						<td width="11%">${listMap.c_regname}</td>
						<td width="9%">${listMap.c_L_ID}</td>
						<td width="9%">${listMap.c_regID}</td>
						<td width="19%"><input
							onclick="javascript:confirm('是否通过审核？');location='/wanted2/system/shenhe/update1.do?c_id=${listMap.c_id}'"
							type="submit" value="通过" /> <input
							onclick="javascript:confirm('是否不通过审核？');location='/wanted2/system/shenhe/update2.do?c_id=${listMap.c_id}'"
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