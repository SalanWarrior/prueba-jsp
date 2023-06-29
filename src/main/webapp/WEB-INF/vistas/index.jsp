<!DOCTYPE html>
<html>

<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

	<style>
		html,
		body {
			height: 100%;
		}

		body {
			display: flex;
			align-items: center;
			justify-content: center;
		}

		.table {
			font-size: 14px;
		}

		.table thead {
			background-color: #f2f2f2;
			color: #333;
			font-weight: bold;
		}

		.table tbody td {
			vertical-align: middle;
		}

		.table-striped tbody tr:nth-of-type(odd) {
			background-color: #f9f9f9;
		}

		.table-hover tbody tr:hover {
			background-color: #f5f5f5;
			cursor: pointer;
		}
	</style>

	<title>Product Manager</title>
</head>

<body>
	<div class="container">
		<div class="card text-center">
			<h3 class="card-header">Product List</h3>
			<div class="card-body">
				<div class="d-grid gap-0 col-6 mx-auto">
					<a href="/new" class="btn btn-primary">Create New Product</a>
				</div>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-xs-12 col-md-6">
						<div class="input-group mb-3">
							<input id="brandFind" type="text" class="form-control" placeholder="Find by brand:"
								aria-label="Find by brand:" aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button id="findBrand" class="btn btn-success" type="button">Search</button>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-md-6">
						<div class="input-group mb-3">
							<input id="highPrice" type="text" class="form-control" placeholder="Order by high price:"
								aria-label="Order by high price:" aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button id="findHighPrice" class="btn btn-success" type="button">Order</button>
							</div>
						</div>
					</div>
				</div>

				<div id="showData"></div>
			</div>
		</div>
	</div>

	<script src="js/index.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>