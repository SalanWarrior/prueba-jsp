document.addEventListener("DOMContentLoaded", function(event) {
	getProducto();
	editaProducto();
	asignarEventos();
});

let prodcuto = {
	"id": null,
	"name": null,
	"brand": null,
	"madein": null,
	"price": null
}

async function getProducto() {
	const valores = window.location.search;
	const urlParams = new URLSearchParams(valores);

	if (urlParams.get('id')) {
		var id = urlParams.get('id');
		const url = `/data/obtenerxid/` + id;
		let producto = await fetch(url)
			.then(response => response.json())
			.then(data => data);
		llenarForm(producto);
	}
}

function llenarForm(data) {
	for (var clave in data) {
		if (data.hasOwnProperty(clave)) {
			var valor = data[clave];
			document.getElementById(clave).value = valor;
		}
	}
}

function editaProducto() {
	document.getElementById("producto").addEventListener("submit", function(event) {
		event.preventDefault();

		for (var clave in prodcuto) {
			if (prodcuto.hasOwnProperty(clave)) {
				var valor = prodcuto[clave];
				if (document.getElementById(clave) !== null)
					prodcuto[clave] = document.getElementById(clave).value;
			}
		}

		fetch('/data/editar', {
			method: 'PUT',
			headers: {
				'Content-Type': 'application/json'
			},
			body: JSON.stringify(prodcuto)
		})
			.then(response => {
				if (response.ok) {
					// La respuesta fue exitosa (código 200-299)
					window.location.href = "/";
				} else {
					// La respuesta tuvo un error
					console.error('Error en la respuesta:', response.status);
				}
			})

			.catch(error => {
				console.error('Error:', error);
			});
	});
}

function asignarEventos() {

	var price = document.getElementById("price");

	price.addEventListener("input", function(event) {
		var valor = event.target.value;
		valor = valor.replace(/[^0-9.]/g, "");
		event.target.value = valor;
	});
}