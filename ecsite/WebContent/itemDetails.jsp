<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品情報詳細画面</title>
</head>
<body>
	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>itemDetails</p>
		</div>
		<div>
			<table border="1">
				<tr>
					<th>id</th>
					<td><s:property value="dto.id" /></td>
				</tr>
				<tr>
					<th>名前</th>
					<td><s:property value="dto.itemName" /></td>
				</tr>
				<tr>
					<th>価格</th>
					<td><s:property value="dto.itemPrice" />
						<span>円</span>
					</td>
				</tr>
				<tr>
					<th>在庫</th>
					<td><s:property value="dto.itemStock" />
					<span>個</span>
				</td>
				</tr>
				<tr>
					<th>登録日</th>
					<td><s:property value="dto.insert_date" /></td>
				</tr>
				<tr>
					<s:form action="ItemDeleteConfirmAction">
						<s:hidden name="id" value="%{id}" />
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