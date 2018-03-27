<%@ page language="java" contentType="text/html; charset=UTF-8 " isELIgnored="false" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/wanted2/user/update.do" method="post">
	<p>
		ID:<input type="text" name="u_id" value="${userList.u_id}"
			readonly="true">
	</p>
	<p>
		姓名:<input type="text" name="u_name" value="${userList.u_name}">
	</p>
	<p>
		密码:<input type="password" name="u_name" value="${userList.u_pwd}">
	</p>
	<p>
		毕业学校:<input type="text" name="u_school" value="${userList.u_school}">
	</p>
	<p>
		学历:<input type="text" name="u_edu" value="${userList.u_edu}">
	</p>
	<p>
		经验:<input type="text" name="u_exp" value="${userList.u_exp}">
	</p>
	<p>
		邮箱:<input type="text" name="u_mail" value="${userList.u_mail}">
	</p>
	<p>
		方向:<input type="text" name="u_direct" value="${userList.u_direct}">
	</p>
	<p>
		电话:<input type="text" name="u_tel" value="${userList.u_tel}">
	</p>
	<p><input type="submit" value="修改"></p>
</form>
	<a href="/wanted2/user/list.do?u_id=${userlogin.u_id}">查看投简情况</a>
</body>
</html>