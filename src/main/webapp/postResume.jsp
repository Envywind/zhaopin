<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>投递简历</title>
	<link rel="stylesheet" type="text/css" href="css/default.css">
	<link rel="stylesheet" href="css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="css/styles.css"> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
</head>
<body>
	<body>
	<div class="jq22-container">
		
		<form class="cd-form floating-labels" style="border: 2px burlywood;" action="/wanted2/user/update.do" method="post">
			<fieldset>
				<legend><strong><h1>Resume Post【投简】</h1></strong></legend>

				<div>
					<a href="#" style="float: left;" name="">用户ID:</a><input type="text" name="u_id" value="${userlogin.u_id }"readonly="true"><br /><br />
					<h3> 两个ID到时候各位就直接EL表达式显示就好了无法修改的</h3>
					<a href="#"  style="float: left;">公司ID:</a><input type="text" name="c_id" value="${companyWantedList.c_id}"readonly="true"><br /><br />
					
				</div> 

				<!--<div>
					<h4>Project type</h4>

					<ul class="cd-form-list">
						<li>
							<input type="radio" name="radio-button" id="cd-radio-1" checked>
							<label for="cd-radio-1">Choice 1</label>
						</li>
							
						<li>
							<input type="radio" name="radio-button" id="cd-radio-2">
							<label for="cd-radio-2">Choice 2</label>
						</li>

						<li>
							<input type="radio" name="radio-button" id="cd-radio-3">
							<label for="cd-radio-3">Choice 3</label>
						</li>
					</ul>
				</div>-->

				<div>
					<h4>希望就任的的职位</h4>

					<ul class="cd-form-list">
						<li>
							<input type="checkbox" id="cd-checkbox-1">
							<label for="cd-checkbox-1">Option 1</label>
						</li>

						<li>
							<input type="checkbox" id="cd-checkbox-2">
							<label for="cd-checkbox-2">Option 2</label>
						</li>

						<li>
							<input type="checkbox" id="cd-checkbox-3">
							<label for="cd-checkbox-3">Option 3</label>
						</li>
					</ul>
					<br />
					<br />
					<h3>Expected Value of Salary【薪资预期】</h3>
						<br/>
					<input type="text" class="span3" name="r_salary">
				</div>

				<div class="icon">
					<label class="cd-label" for="cd-textarea">Profile description【个人简历】</label>
	      			<textarea class="message" name="r_profile" id="cd-textarea" ></textarea>
				</div>

				<div>
			      	<input type="submit" value="Send Message">
			    </div>
			</fieldset>
		</form>
	</div>
	
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>