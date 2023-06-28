<html>

<head>
	<meta charset="utf-8" />
	<title>Product Manager</title>
</head>

<body>
	<h1>Product List</h1>
	<br />
	<label>Find by brand: </label> <input id="brandFind" type="text" th:field="" /> <button id="findBrand" type="submit">search</button>
	<br /><br />
	<label>Order by high price: </label> <input id="highPrice" type="text" th:field="" /> <button id="findHihgPrice" type="submit">order</button>
	<br /><br />
	<a href="/new">Create New Product</a>
	<br /><br />

	<div id="showData"></div>

	<script src="js/index.js"></script>
</body>

</html>