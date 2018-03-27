<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/wanted2/company/companyUpD.do" method="post">
	
		<table border="1px">
			<tr>
				<td>id</td>
				<td><input type="text" name="c_id" value="${companyList.c_id}"
					readonly="true"></td>
			</tr>
			<tr>
				<td>公司名</td>
				<td><input type="text" name="c_name" value="${companyList.c_name}"
					readonly="true"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="c_pwd" value="${companyList.c_pwd}"
					></td>
			</tr>
			<tr>
				<td>公司注册号</td>
				<td><input type="text" name="c_regcode" value="${companyList.c_regcode}"
					readonly="true"></td>
			</tr>
			<tr>
				<td>网站注册者姓名</td>
				<td><input type="text" name="c_regname" value="${companyList.c_regname}"
					readonly="true"></td>
			</tr>
			 <tr>
            <td colspan="2" align="right"><input type="submit" value="修改"></td>
        </tr>
		</table>
	</form>
</body>
</html>