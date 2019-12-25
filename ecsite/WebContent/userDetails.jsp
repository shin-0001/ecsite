<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品詳細</title>
</head>
<body>
	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>userDetails</p>
		</div>
		<div>
			<table border="1">
				<tr>
					<th>id</th>
					<td><s:property value="dto.id" /></td>
				</tr>
				<tr>
					<th>ログインID</th>
					<td><s:property value="dto.loginId" /></td>
				</tr>
				<tr>
					<th>ログインPASS</th>
					<td><s:property value="dto.loginPass" /></td>
				</tr>
				<tr>
					<th>ユーザー名</th>
					<td><s:property value="dto.userName" /></td>
				</tr>
				<tr>
					<th>登録日</th>
					<td><s:property value="dto.insert_date" /></td>
				</tr>
				<tr>
					<s:form action="UserDeleteConfirmAction">
						<s:hidden name="loginId" value="%{loginId}" />
						<s:submit value="削除" />
					</s:form>
				</tr>
			</table>
		</div>
	</div>

	<div id="footer">
	</div>
</body>
</html>