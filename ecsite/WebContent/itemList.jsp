<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>商品一覧</title>
</head>
<body>
	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>ItemList</p>
		</div>
		<div>
			<s:if test="itemList == null">
				<h3>商品情報はありません。</h3>
			</s:if>
			<s:elseif test="itemList != null">
				<h3>商品情報は以下になります。</h3>
				<table border="1">
					<tr>
						<th>商品名</th>
						<th>価格</th>
						<th>在庫</th>
						<th>登録日</th>
					</tr>
					<s:iterator value="itemList">
						<tr>
							<td><s:property value="itemName" /></td>
							<td><s:property value="itemPrice" /><span>円</span></td>
							<td><s:property value="itemStock" /><span>個</span></td>
							<td><s:property value="insert_date" /></td>
							<td>
								<a href='<s:url action="ItemDetailsAction">
										<s:param name="id" value="%{id}" />
								</s:url>'>詳細</a>
							</td>
						</tr>
					</s:iterator>
				</table>
			</s:elseif>

			<s:form action="ItemListDeleteConfirmAction">
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