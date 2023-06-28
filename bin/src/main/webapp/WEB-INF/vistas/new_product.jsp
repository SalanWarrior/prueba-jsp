<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
	<meta charset="utf-8" />
	<title>Create New Product</title>
</head>

<body>
	<div align="center">
		<h1>Create New Product</h1>
		<br />
		<form id="producto">

			<table border="0" cellpadding="10">
				<tr>
					<td>Product Name:</td>
					<td><input id="name" type="text" th:field="" /></td>
				</tr>
				<tr>
					<td>Brand:</td>
					<td><input id="brand" type="text" th:field="" /></td>
				</tr>
				<tr>
					<td>Made In:</td>
					<td><input id="madein" type="text" th:field="" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><input id="price" type="text" th:field="" /></td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit">Save</button> </td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/edit.js"></script>
</body>

</html>