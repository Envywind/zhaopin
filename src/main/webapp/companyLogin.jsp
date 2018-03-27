<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>公司登陆</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/default.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css"> <!-- Resource style -->
	<script src="<%=request.getContextPath()%>/js/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
	<div class="jq22-container" style="background:#F5F5DC ;">
		
		<form class="cd-form floating-labels" action="/wanted2/zhaoping/companylogin.do" method="post">
			<fieldset>
				<legend><h1>Company 公司登陆</h1></legend>

		
				<div class="icon">
					<label class="cd-label" for="cd-CompanyName">CompanyName</label>
					<input class="user" type="text" name="c_name" id="C_name" required>
			    </div> 
			    <div class="icon">
					<label class="cd-label" for="cd-regCode">password</label>
					<input class="user" type="text" name="c_pwd" id="C_regCode" required>
			    </div> 

			   
			    <!--<div class="icon">
			    	<label class="cd-label" for="cd-direct">direct</label>
					<input class="company" type="text" name="cd-direct" id="cd-direct">
			    </div> 

			    <div class="icon">
			    	<label class="cd-label" for="cd-email">Email</label>
					<input class="email error" type="email" name="cd-email" id="cd-email" required>
			    </div>-->
			    <div>
			      	<input type="submit" value="Send Message">
			    </div>
			</fieldset>	
		</form>
	</div>
	
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="<%=request.getContextPath()%>/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>