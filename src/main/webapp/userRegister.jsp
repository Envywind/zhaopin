<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>用户注册</title>
  <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/normalize.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/public.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/validator.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/completer.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/jedate/skin/jedate.css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/date.css" type="text/css" rel="stylesheet">
  <link href="<%=request.getContextPath()%>/css/magic-check.css" rel="stylesheet" >
  <link href="<%=request.getContextPath()%>/css/jquery-ui.css" rel="stylesheet">  
  <link href="<%=request.getContextPath()%>/css/index.css" rel="stylesheet">  
  <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
  <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/public.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/jedate/jedate.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/date.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-validate.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/validator.js"></script>
  <script type="text/javascript" src="http://www.jq22.com/jquery/jquery-ui-1.10.2.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/js/index.js"></script>

  
</head>
<body>
<header>
</header>
<div class="container">
  <div class="form-box row">
    <form action="/wanted2/zhaoping/save.do" class="form-horizontal" role="form" id="register-form" method="post">
      <div class="form-group">
        <label for="username" class="col-sm-2  control-label">帐 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 号 :</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="username" name="u_loginid" placeholder="请输入帐户" >
          <span></span>
        </div>
      </div>
       <div class="form-group ">
        <label for="password" class="col-sm-2  control-label">密 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 码 :</label>
        <div class="col-sm-10  input-parent">
          <input type="password" class="form-control vinput" id="password" name="u_pwd" placeholder="请输入密码"/>
          <i class="glyphicon glyphicon-eye-close form-control-feedback" id="toogle-password"></i>
          <span></span>
        </div>
      </div>
      <div class="form-group">
        <label for="notpass" class="col-sm-2  control-label">确认密码 :</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="notpass" name="notpass" placeholder="请再次输入密码"/>
          <i class="glyphicon glyphicon-eye-close form-control-feedback" id="toggle-notpass"></i>
          <span></span>
        </div>
      </div>
       <div class="form-group">
        <label for="notpass" class="col-sm-2  control-label">性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 别 :</label>
        <div class="col-sm-10  input-parent">
         <input name="sex" id="man" type="radio"  name="u_sex"/>
         <label >男</label>
         <input name="sex" id="woman" type="radio"  name="u_sex"/>
         <label >女</label>
         
         
          <span></span>
        </div>
      </div>
      <br>
      <div class="form-group">
        <label for="phone" class="col-sm-2  control-label">手 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 机 :</label>
        <div class="col-sm-10  input-parent">
          <input type="text" class="form-control vinput" id="phone" name="u_tel" placeholder="请输入手机号">    
          <span></span>
        </div>
      </div>
      <div class="form-group ">
        <label for="email" class="col-sm-2  control-label">邮 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 箱 :</label>
        <div class="col-sm-10 input-parent">
          <input type="text" class="form-control vinput" id="email" name="u_mail" placeholder="请输入邮箱"/>       
          <span></span>
        </div>
      </div>
     
      
      
      <div class="form-group">
        <div class="col-sm-12">
          <input type="checkbox" class="magic-checkbox" id="accept" name="accept" />
          <label for="accept" class="accept"><span>我已阅读并接受</span> <a href="javascript:;">《版权声明》</a> <span>和</span> <a href="javascript:;">《隐私保护》</a></label>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-12">
          <input type="submit" class="btn btn-primary form-control" id="submit" value="注册"/> 
        </div>
      </div>
    </form>
  </div>
</div>

<footer>
</footer>
</body>
</html>