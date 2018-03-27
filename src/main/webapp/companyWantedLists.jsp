<%@ page language="java" contentType="text/html; charset=UTF-8 "
	isELIgnored="false" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="<%=basePath %>css/company/sysAdm.css" rel="stylesheet"
	type="text/css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<br />
	<table width="700" border="0" cellspacing="0" cellpadding="4"
		align="center" id="tabInq">
		<tr align="center" valign="bottom">
			<td colspan="2" scope="col" class="tabTitle">招聘信息管理</td>
		</tr>
		<tr align="center" valign="top">
			
			
		</tr>
	</table>
			<table width="760" border="0" align="center" cellpadding="4"
				cellspacing="1" id="tabList">
				<tr>
					<th scope="col">招聘ID</th>
					<th scope="col">工资</th>
					<th scope="col">人数</th>
					<th scope="col">岗位</th>
					<th scope="col">要求</th>
					<th scope="col">工作地址</th>
					<th scope="col">操作</th>

				</tr>
				<c:choose>
					<c:when test="${!empty companyWantedList}">
						<c:forEach items="${companyWantedList}" var="listMap">
							<tr>
								<td width="10%">${listMap.w_id}</td>
								<td width="5%">${listMap.w_salary}</td>
								<td width="5%">${listMap.w_num}</td>
								<td width="10%">${listMap.w_job}</td>
								<td width="40%">${listMap.w_require}</td>
								<td>${listMap.w_addr}</td>
								<td align="center" width="15%">
								<a
									href="<%=basePath%>company/companySeleOneWanted.do?w_id=${listMap.w_id}">
										<img
										src="<%=basePath%>images/company/record_(edit)_16x16.gif"
										border="0" title="修改记录" /> &nbsp;&nbsp;
									
								</a> <!-- 预留 --> 
								<a
									href="<%=basePath%>company/companyDeleWanted.do?w_id=${listMap.w_id}"
									onclick="return confirm('是否删除指定记录')"> <img
										src="<%=basePath%>images/company/record_(delete)_16x16.gif"
										border="0" title="删除记录" />
								</a></td>


							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr align="center">
							<td colspan="8"><span class="STYLE1"> 无信息！ </span></td>
						</tr>
					</c:otherwise>
				</c:choose>
				
				<tr align="center">
					
				</tr>
			</table>
			<% %>
			</div>
</body>

</html>