	<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
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
		<link href="./css/jquery.slideBox.css" rel="stylesheet" type="text/css" />
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

	<!-- //头顶框top-->
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner" style="height: 150px;">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".navbar-inverse-collapse"> <i
					class="icon-reorder shaded"></i>
				</a> <a class="brand" href="<%=request.getContextPath()%>/index.html"> Wanted </a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#"> <i class="icon-envelope"></i>
						</a></li>
						<li><a href="#"> <i class="icon-eye-open"></i>
						</a></li>
						<li><a href="#"> <i class="icon-bar-chart"></i>
						</a></li>
					</ul>

					<!--搜索框-->
					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>

					<ul class="nav pull-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Login <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<form id="loginForm" action="/wanted2/zhaoping/login.do" method="post">
									<fieldset id="body">
										<fieldset>
											<label for="userId">用户账号</label> <input type="text"
												name="u_loginid" id="u_loginid">
										</fieldset>
										<fieldset>
											<label for="password">用户密码</label> <input type="password"
												name="u_pwd" id="u_pwd">
										</fieldset>
										
										<label for="checkbox"><input type="checkbox" id="checkbox" name="u_role" value="用户">
											用户	</label>
											
											<label
											for="checkbox"><input type="checkbox" id="checkbox" name="u_role" value="管理员">
											管理员
											</label>
											<input type="submit" id="login" value="Sign in"> 
									</fieldset>
									
                                 <span style="color: red;"><a href="companyLogin.jsp">公司登陆</a></span>
								</form>
								
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Register <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="companyRegister.jsp"> 公司注册 </a></li>
								<li><a href="userRegister.jsp" style="float: left;">
										用户注册 </a></li>
							</ul></li>

						</li>

					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
		</div>
		<!-- /navbar-inner -->
	</div>
	
		<!-- /navbar -->

		<!--å·¦+å³æ ç®å-->
		<div class="wrapper" style="background: #F5F5DC ;">
			<div class="container">
				<div class="row">

					<!--å·¦è¾¹ä¾§è¾¹æ¡-->
					<div class="span3">

						<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
						<link rel='stylesheet prefetch' href='http://puertokhalid.com/up/demos/puerto-Mega_Menu/css/normalize.css'>
						<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" media="screen" type="text/css" />
						</head>

						<body>
							<div class="container">
								<nav>
									<ul class="mcd-menu">
										<li>
											<a href=""> <i class="#"></i> <strong>前端</strong> <small>sweet home</small> </a>
										</li>
										<li>
											<a href="" class="active"> <i class="#"></i> <strong>你猜</strong> <small>sweet home</small> </a>
										</li>
										<li>
											<a href=""> <i class="#"></i> <strong>后台</strong> <small>sweet home</small> </a>
										</li>
										<li>
											<a href=""> <i class="#"></i> <strong>美工</strong> <small>sweet home</small> </a>
										</li>
										<li>
											<a href=""> <i class="#"></i> <strong>技术</strong> <small>what they say</small> </a>
											<ul>
												<li>
													<a href="#"><i class="#"></i>C++</a>
												</li>
												<li>
													<a href="#"><i class="#"></i>Java</a>
													<ul>
														<li>
															<a href="#"><i class="#"></i>搜索算法</a>
														</li>
														<li>
															<a href="#"><i class="#"></i>数据挖掘</a>
															<ul>
																<li>
																	<a href="#"><i class="fa fa-leaf"></i>PHP</a>
																</li>
																<li>
																	<a href="#"><i class="fa fa-tasks"></i>Python</a>
																</li>
															</ul>
														</li>
														<li>
															<a href="#"><i class="#"></i>自然语言处理</a>
														</li>
													</ul>
												</li>
												<li>
													<a href="#"><i class="#"></i>C</a>
												</li>
												<li>
													<a href="#"><i class="#"></i>C#</a>
												</li>
											</ul>
										</li>
										<li>
											<a href=""> <i class="#"></i> <strong>忘了</strong> <small>sweet home</small> </a>
										</li>
										<li>
											<a href=""> <i class="#"></i> <strong>忘了</strong> <small>drop a line</small> </a>
										</li>

									</ul>
								</nav>
							</div>

						</body>

</html>

</div>

<!--å³è¾¹æ ç®å-->
<div class="span9">
	<div class="content">
		<!--<h3>åãéèåºæ </h3>-->
		<div>
			<iframe src="<%=request.getContextPath()%>/rightSider.html" width="100%" scrolling="no" border="0" frameborder="0" ></iframe>
			
		</div>
		
		
		<div class="module">
			<div class="module-head">
				<h3>Tables</h3>
			</div>

		</div>
	</div>
	<!--/.module-->

</div>
<!--/.content-->
</div>
<!--/.å³è¾¹æ ç®åç»æ-->
</div>
</div>
<!--/.container-->
</div>
<!--/.å·¦+å³æ ç®åç»æ-->

<!--åºé¨-->
<%@include file="common/footer.html" %>
<!--åºé¨ç»æ-->

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