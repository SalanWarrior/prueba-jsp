document.addEventListener("DOMContentLoaded", function(event) {
	getAggregate();
	asignarEventos();
});

let prodcuto = {
	"id": null,
	"name": null,
	"brand": null,
	"madein": null,
	"price": null
}

function asignarEventos() {
	document.getElementById("findBrand").addEventListener("click", function(event) {
		let brand = document.getElementById("brandFind").value;
		if (brand === null || brand.trim() === "") {
			brand = '0';
		}
		getByBrand(brand);
	});

	document.getElementById("findHihgPrice").addEventListener("click", function(event) {
		let price = document.getElementById("highPrice").value;
		if (price === null || price.trim() === "") {
			price = '0';
		}
		getByHighPrice(price);
	});

	var price = document.getElementById("highPrice");
	price.addEventListener("input", function(event) {
		var valor = event.target.value;
		valor = valor.replace(/[^0-9.]/g, "");
		event.target.value = valor;
	});
}

async function getByBrand(brand) {
	const url = `/data/bandeja/` + brand;
	let cases = await fetch(url)
		.then(response => response.json())
		.then(data => data);
	llenarTabla(cases);
}

async function getByHighPrice(price) {
	const url = `/data/bandejaprecio/` + price;
	let cases = await fetch(url)
		.then(response => response.json())
		.then(data => data);
	console.log(cases);
	llenarTabla(cases);
}

async function getAggregate() {
	const url = `/data/bandeja`;
	let cases = await fetch(url)
		.then(response => response.json())
		.then(data => data);
	llenarTabla(cases);
}

function llenarTabla(data) {
	if (data.length === 0)
		data.push(prodcuto);

	let col = [];
	for (let i = 0; i < data.length; i++) {
		for (let key in data[i]) {
			if (col.indexOf(key) === -1) {
				col.push(key);
			}
		}
	}

	const table = document.createElement("table");
	table.setAttribute("border", "1");
	table.setAttribute("cellpadding", "10");

	let tr = table.insertRow(-1);                   // table row.

	for (let i = 0; i < col.length; i++) {
		let th = document.createElement("th");      // table header.
		th.innerHTML = col[i];
		tr.appendChild(th);

		if (i + 1 == col.length) {
			let th = document.createElement("th");      // table header.
			th.innerHTML = "actions";
			tr.appendChild(th);

		}
	}

	for (let i = 0; i < data.length; i++) {

		tr = table.insertRow(-1);

		for (let j = 0; j < col.length; j++) {
			let tabCell = tr.insertCell(-1);
			tabCell.innerHTML = data[i][col[j]];

			if (j + 1 == col.length && !(data[i][col[j]] === null || data[i][col[j]] === "")) {
				var e = document.createElement('a'), d = document.createElement('a');
				var et = document.createTextNode("edit"), ed = document.createTextNode("delete");
				const s = document.createTextNode('\xA0\xA0\xA0');

				e.appendChild(et);
				e.href = "/edit?id=" + data[i][col[0]];
				d.appendChild(ed);
				d.href = "/delete/" + data[i][col[0]];
				//document.body.appendChild(a);
				let tabCell = tr.insertCell(-1);
				tabCell.appendChild(e);
				tabCell.appendChild(s);
				tabCell.appendChild(d);
			}
		}
	}

	const divShowData = document.getElementById('showData');
	divShowData.innerHTML = "";
	divShowData.appendChild(table);


}
