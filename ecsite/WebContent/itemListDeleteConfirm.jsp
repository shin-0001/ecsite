<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>商品削除確認画面</title>

	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action',url);
			$('form').submit();
		}
	</script>

</head>
<body>
	<div id="header">
	</div>

	<div id="main">
		<div id="top">
			<p>ItemListDeleteConfirm</p>
		</div>
		<div>
			<h3>すべての商品を削除します。よろしいですか？</h3>
		</div>
		<div>
			<s:form>
				<input type="button" value="キャンセル" onclick="submitAction('ItemListAction')" />
				<input type="button" value="ＯＫ" onclick="submitAction('ItemListDeleteCompleteAction')" />
			</s:form>
		</div>
	</div>

	<div id="footer">
	</div>
</body>
</html>