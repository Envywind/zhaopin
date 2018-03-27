<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>发布招聘信息</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="<%=basePath %>assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath %>assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath %>assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="<%=basePath %>assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="<%=basePath %>assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="<%=basePath %>assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<%=basePath %>assets/img/favicon.png">
</head>

<body>

	<!-- LEFT COLUMN -->

	<div class="profile-left"
		style="margin-left: 492px; margin-right: 492px; margin-top: 20px;">
		<!-- PROFILE HEADER -->
		<div class="profile-header">
			<div class="overlay"></div>
			<div class="profile-main">

				<h3 class="name"></h3>
				<span class="online-status status-available">公司状态</span>
			</div>
			<div class="profile-stat">
				<h1></h1>
				<div class="row">
					<div class="col-md-4 stat-item">
						45 <span>Projects</span>
					</div>
					<div class="col-md-4 stat-item">
						15 <span>Awards</span>
					</div>
					<div class="col-md-4 stat-item">
						2174 <span>Points</span>
					</div>
				</div>
			</div>
		</div>
		<!-- END PROFILE HEADER -->
		<!-- PROFILE DETAIL -->
		<div class="profile-detail">
			<div class="profile-info">
				<h4 class="heading">Basic Info</h4>
				<form action="/wanted2/company/companyAddWanted.do" method="post">
					<ul class="list-unstyled list-justify">

						<li>公司ID
							<td><input type="text" name="c_id"
								value="${companyList.c_id }" readonly="ture"></td>
						</li>

						<li>公司名
							<td><input type="text" name="c_name"
								value="${companyList.c_name }" readonly="ture"></td>
						</li>
						<li>工作地点
							<td><input type="text" name="w_addr"> >
						</li>
						<li>月薪<input type="text" name="w_salary"> >
						</li>
						<li>人数<input type="text" name="w_num"> >
						</li>
						<li>岗位<input type="text" name="w_job"> >
						</li>
						<li>要求<input type="text" name="w_require"> >
						</li>
					</ul>
					<div class="text-center">
						<input type="submit" class="btn btn-primary" value="发布">
					</div>

				</form>
			</div>
			<div class="profile-info">
				<h4 class="heading">Social</h4>
				<ul class="list-inline social-icons">
					<li><a href="#" class="facebook-bg"><i
							class="fa fa-facebook"></i></a></li>
					<li><a href="#" class="twitter-bg"><i
							class="fa fa-twitter"></i></a></li>
					<li><a href="#" class="google-plus-bg"><i
							class="fa fa-google-plus"></i></a></li>
					<li><a href="#" class="github-bg"><i class="fa fa-github"></i></a></li>
				</ul>
			</div>
			<div class="profile-info">

				<p>期待您的加入.</p>
			</div>
		</div>
		<!-- END PROFILE DETAIL -->
	</div>
	<!-- END LEFT COLUMN -->

	<footer>
	<div class="container-fluid"></div>
	</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="<%=basePath %>assets/vendor/jquery/jquery.min.js"></script>
	<script src="<%=basePath %>assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=basePath %>assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath %>assets/scripts/klorofil-common.js"></script>
</body>

</html>