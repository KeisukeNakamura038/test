<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR</title>
</head>
<body>
	<h1>ログインに失敗しました。。。</h1>

	<p>【入力内容を確認してください】</p>
	<p>ユーザー名:<s:property value="name"/></p>
	<p>パスワード:<s:property value="password"/></p>
</body>
</html>