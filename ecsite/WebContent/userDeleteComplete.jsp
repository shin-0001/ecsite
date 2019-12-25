<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ユーザー情報削除完了</title>
</head>
<body>
	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>userDeleteComplete</p>
		</div>
		<div>
			<h3><s:property value="message" /></h3>
		</div>
		<div>
			<p><a href='<s:url action="AdminAction" />'>管理者ＴＯＰへ</a></p>
		</div>
	</div>

	<div id="footer">
	</div>
</body>
</html>