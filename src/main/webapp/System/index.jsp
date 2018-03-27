<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" " http://www.w3.org/TR/html4/strict.dtd">
<html>
<title>首页</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="common/base.jsp" />
<style type="text/css">
ul li {
	/*margin-top: 15;*/
	cursor: pointer;
	list-style-type: none;
}
</style>
<script type="text/javascript">
	
	/*
	*添加选项卡方法
	*/
	function addTab(title,url){
		//先判断是否存在标题为title的选项卡
		var tab=$('#easytabs').tabs('exists',title);
		if(tab){
			//若存在，则直接打开
			$('#easytabs').tabs('select',title);
		}else{
			//否则创建
			$('#easytabs').tabs('add',{
				title:title,
				content:"<iframe width='100%' height='100%'  id='iframe' frameborder='0' scrolling='auto'  src='"+url+"'></iframe>",
				closable:true
			});
		}
	}
	
    </script>
</head>
<body class="easyui-layout">

	<!-- TOP开始   -->
	<div data-options="region:'north',border:false"
		style="height: 60px; padding: 10px">
		<div style="float: right; padding: 10px; font-size: 20px;">
			<span>欢迎管理员</span>

		</div>
	</div>
	<!-- TOP结束   -->

	<div data-options="region:'center'" style="border: 0px;">
		<div class="easyui-layout" data-options="fit:true"
			style="border: 0px;">
			<!-- 菜单栏开始（动态加载）   -->
			<div data-options="region:'west',split:true,title:' 系统后台管理 '"
				style="width: 180px; height: 100%; overflow: hidden; overflow-x: hidden;">
				<div class="easyui-accordion" fit="true" style="text-align: center; font-size: 20px">
					<ul>
						<li onclick="javascript:addTab('首页','index.jsp');">首页</li>
						<li onclick="javascript:addTab('审核公司注册','/wanted2/system/shenhe/list.do');">审核公司注册</li>
						<li onclick="javascript:addTab('公司管理','/wanted2/system/company/list.do');">公司管理</li>
						<li onclick="javascript:addTab('用户管理','/wanted2/system/user/list.do');">用户管理</li>
					</ul>
				</div>
			</div>
			<!-- 菜单栏结束   -->

			<!-- 首页开始   -->
			<div data-options="region:'center'">
				<div id="easytabs" class="easyui-tabs" fit="true">
					<div title="首页">
						<iframe frameborder="0" src="/wanted2/System/images/404.jpg" 
							style="width: 100%; height: 100%; overflow: -Scroll; overflow-y: hidden;"></iframe>
					</div>
				</div>
			</div>
			<!-- 首页结束   -->

		</div>
	</div>
</body>
</html>
