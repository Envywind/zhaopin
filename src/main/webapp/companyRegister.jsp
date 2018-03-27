<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>公司注册</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/default.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles.css"> <!-- Resource style -->
	<script src="<%=request.getContextPath()%>/js/modernizr.js"></script> <!-- Modernizr -->
	<script language="javascript" type="text/javascript">
	function checkUser(){
          var c_name=$("#c_name").val();
          
          $.ajax({
             url:"/wanted2/zhaoping/queryByUser.do",
             type:"post",
             data:{"c_name":c_name},
             dataType:"json",
            success:function(data){
                 if (data!=null ) {
                  $("#userSpan").text("用户名已存在");
                  $("#c_name").val('');
              }else if(data==null && username !=''){
                  $("#userSpan").text("用户名可用");
              }
            }
          });
      }
	</script>
</head>
<body>
	<div class="jq22-container" style="background:#F5F5DC ;">
		
		<form class="cd-form floating-labels" action="/wanted2/zhaoping/companyinsert.do" method="post">
			<fieldset>
				<legend><h1>Company 公司注册</h1></legend>

		
				<div class="icon">
					<label class="cd-label" for="cd-CompanyName">CompanyName</label>
					<input class="user" type="text" name="c_name" id="c_name" required="" onblur="checkUser();">
					<span id="userSpan"></span><br>
			    </div> 
			    <div class="icon">
					<label class="cd-label" for="cd-CompanyName">password</label>
					<input class="user" type="text" name="c_pwd" id="c_pwd" required>
			    </div> 

			    <div class="icon">
			    	<label class="cd-label" for="cd-licence">licence</label>
					<input class="company" type="text" name="c_license" id="C_licence">
			    </div> 
			    <div class="icon">
			    	<label class="cd-label" for="cd-L_IDpic">法人身份证上传</label>
					<input class="company" type="text" name="c_L_IDpic" id="C_L_IDpic">
			    </div> 
			    <div class="icon">
			    	<label class="cd-label" for="cd-school">regname</label>
					<input class="company" type="text" name="c_regname" id="C_regname">
			    </div> 
			    <div class="icon">
			    	<label class="cd-label" for="cd-æ³äººèº«ä»½è¯">法人身份证号¯</label>
					<input class="company" type="text" name="c_L_ID" id="C_L_ID">
			    </div> 
			    <div class="icon">
			    	<label class="cd-label" for="cd-tel">注册者身份证</label>
					<input class="company" type="text" name="c_regID" id="C_regID">
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