<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
	<meta charset="utf-8" />
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
	</style>
	<title>Create New Product</title>
</head>

<body>
	<div class="container">
		<div class="d-grid gap-0 col-8 mx-auto">
			<div class="card">
				<div class="card text-center">
					<h5 class="card-header">Create New Product</h5>
				</div>
				<div class="card-body">
					<form id="producto">
						<div class="row mb-4">
							<div class="col">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Product Name:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="name" placeholder="Product Name">
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Brand:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="brand" placeholder="Brand">
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Made In:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="madein" placeholder="Made In">
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-4">
							<div class="col">
								<div class="form-group row">
									<label class="col-sm-2 col-form-label">Price:</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="price" placeholder="Price">
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-8">
							<button class="btn btn-primary btn-lg btn-block" type="submit">
								Save
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script src="js/edit.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>