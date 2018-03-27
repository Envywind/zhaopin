
<%@ page language="java" contentType="text/html; charset=UTF-8 "
	isELIgnored="false" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Edmin</title>
		<link type="text/css" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link type="text/css" href="<%=request.getContextPath()%>/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link type="text/css" href="<%=request.getContextPath()%>/css/theme.css" rel="stylesheet">
		<link type="text/css" href="<%=request.getContextPath()%>/images/icons/css/font-awesome.css" rel="stylesheet">
		<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
		<link href="<%=request.getContextPath()%>/css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
		<link rel='stylesheet prefetch' href='http://puertokhalid.com/up/demos/puerto-Mega_Menu/css/normalize.css'>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" media="screen" type="text/css" />
		<!-- VENDOR CSS -->
		<!--<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">-->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/vendor/linearicons/style.css">
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/main.css">
		<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/demo.css">
		<!-- GOOGLE FONTS -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
		<script src="<%=request.getContextPath()%>/js/jquery-1.7.1.min.js" type="text/javascript"></script>

		

	</head>

	<body>
		<%@include file="common/header_companylogin.html" %>
		<!-- /navbar -->

		<!--中间部分-->
		<div style="background: #F5F5DC ;height="800px">
			<div class="container">
				<div class="row">

				<iframe src="/wanted2/company/companyListWanted.do?c_id=${companylogin.c_id}" width="100%"   height="800px" scrolling="no" border="0" frameborder="0" name="table1"  align="middle"></iframe>
<!--/.container-->
</div>
</div>
</div>

<!--底部-->
<%@include file="common/footer.html" %>
<!--底部结束-->

<script src="<%=request.getContextPath()%>/scripts/jquery-1.9.1.min.js"></script>
<script src="<%=request.getContextPath()%>/scripts/jquery-ui-1.10.1.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/scripts/datatables/jquery.dataTables.js"></script>
<script>
	$(document).ready(function() {
		$('.datatable-1').dataTable();
		$('.dataTables_paginate').addClass("btn-group datatable-pagination");
		$('.dataTables_paginate > a').wrapInner('<span />');
		$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
		$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
	});
</script>


</body>