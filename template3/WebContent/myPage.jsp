<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>MyPage画面</title>
</head>
<body>
	<div id="header"></div>
	<div id="main">
		<div id="top">
			<p>MyPAGE</p>
		</div>
		<div>
			<s:if test="session.message == ''">
				<h3>ご購入情報は以下になりまっす。</h3>
				<table>
					<tr>
						<td>商品名</td>
						<td><s:property value="session.buyItem_name" /></td>
					</tr>
					<tr>
						<td>値段</td>
						<td><s:property value="session.total_price" /><span>円</span></td>
					</tr>
					<tr>
						<td>購入個数</td>
						<td><s:property value="session.total_count" /><span>個</span></td>
					</tr>
					<tr>
						<td>お支払い方法</td>
						<td><s:property value="session.total_payment" /></td>
					</tr>
				</table>
				<s:form action="MyPageAction">
					<input type="hidden" name="deleteFlg" value="1">
					<s:submit value="DELETE" />
				</s:form>
			</s:if>
			<s:if test="session.message != null">
				<h3>
					<s:property value="session.message" />
				</h3>
			</s:if>
			<div>
				<br> <span>前画面に戻る場合は</span> <a
					href='<s:url action="HomeAction"/> '>LOGOUT</a><span>をお願いします。</span>
			</div>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>