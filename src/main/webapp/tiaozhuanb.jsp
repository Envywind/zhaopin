<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title></title>

<style type="text/css">
@import url("./css/login.css");

.center-container .top {
	float: right;
	font-size: 25px;
}

.center-container .top a {
	color: #FFF;
}
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.1.4.min.js"></script>
</head>

<body>

	<div class="center-container">

		<!--header-->
		<div class="header">
			<h1>用户注册</h1>
		</div>
		<!--//header-->
		<div class="main-content-agile">

			<div class="sub-main-w3">
				<div class="header2">
					账号已存在请重新注册
   <meta http-equiv="Refresh" content="3;URL=<%=basePath%>userRegister.jsp" />
				</div>
				
			</div>
		</div>
		<div class="footer">
			<p>
				
			</p>
		</div>
	</div>
</body>
</html>
