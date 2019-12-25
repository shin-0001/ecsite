<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>ユーザー一覧</title>
</head>
<body>
	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>UserList</p>
		</div>
		<div>
			<s:if test="userList == null">
				<h3>ユーザー情報はありません。</h3>
			</s:if>
			<s:elseif test="userList != null">
				<h3>ユーザー情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>ログインID</th>
						<th>ログインPASS</th>
						<th>ユーザー名</th>
						<th>登録日</th>
					</tr>
					<s:iterator value="userList">
						<tr>
							<td><s:property value="loginId" /></td>
							<td><s:property value="loginPass"/></td>
							<td><s:property value="userName" /></td>
							<td><s:property value="insert_date" /></td>
							<td>
								<a href = '<s:url action="UserDetailsAction">
									<s:param name="loginId" value="%{loginId}" />
								</s:url>'>詳細</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</s:elseif>

			<s:form action="UserListDeleteConfirmAction">
				<s:submit value="削除" />
			</s:form>
			<div>
				<span>管理者画面</span>
				<a href='<s:url action="AdminAction" />'>ＴＯＰへ</a>
			</div>

		</div>
	</div>

	<div id="footer">
	</div>
</body>
</html>