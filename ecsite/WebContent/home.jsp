<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>HOME画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>HOME</p>
		</div>
		<div id="text-center">
			<s:form action="HomeAction">
				<s:submit value="商品購入" />
			</s:form>
			<s:form action="AdminAction">
				<s:submit value="管理者"/>
			</s:form>
			<s:if test="#session.login_user_id != null">
				<p>
					LOGOUTする場合は<a href='<s:url action="LogoutAction"/> '>こちら</a>
			</s:if>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>

<!-- HOME 画面最初のページ
	商品購入をクリックするとHomeActionに飛ぶ
	login_user_idが残っていた場合「LOGOUTする場合・・・」の文が表示される。飛ぶ先はLogoutAction -->