<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>LOGIN画面</title>
</head>
<body>
		<div id="header">
		</div>
		<div id="main">
				<div id="top">
						<p>LOGIN</p>
				</div>
				<div>
						<h3>商品を購入する際にはログインをお願いします。</h3>
						<s:form action="LoginAction">
								<label>ID:</label><s:textfield name="loginUserId"/>
								<label>PASS:</label><s:password name="loginPassword"/>
								<s:submit value="LOGIN"/>
						</s:form>
						<br/>
						<div>
							<span>新規ユーザー登録は<a href='<s:url action="UserCreateAction"/> '>こちら</a></span>
						</div>
				</div>
		</div>
		<div id="footer">
		</div>
</body>
</html>