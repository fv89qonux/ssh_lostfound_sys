<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function() {
		$('.loginbox').css({
			'position' : 'absolute',
			'left' : ($(window).width() - 692) / 2
		});
		$(window).resize(function() {
			$('.loginbox').css({
				'position' : 'absolute',
				'left' : ($(window).width() - 692) / 2
			});
		});
	});
</script>

</head>

<body
	style="background-color:#1c77ac; background-image:url(images/back.jpg); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>


	<div class="logintop">
		<span>欢迎登录失物招领后台管理界面平台</span>
		<ul>
			<li><a href="../index.jsp">回首页</a>
			</li>
			<li><a href="#">帮助</a>
			</li>
			<li><a href="#">关于</a>
			</li>
		</ul>
	</div>

	<div class="loginbody">

		<span class="systemlogo"></span>

		<div class="loginbox">
			<form action="admin_Log.action" method="post">
				<ul>
					<li><input name="admin.adminname" type="text"
						class="loginuser"/>
					</li>
					<li><input name="admin.adminpassword" type="password"
						class="loginpwd" />
					</li>
					<li><input name="" type="submit" class="loginbtn" value="登录" />
					</li>
				</ul>
			</form>

		</div>

	</div>

	 

</body>

</html>

