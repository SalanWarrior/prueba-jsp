package com.alan.pruebajsp;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("data")
public class AppDataController {

	private static Logger LOG = LoggerFactory.getLogger(AppDataController.class);

	@Autowired
	private ProductService service;

	@GetMapping("/bandeja")
	public List<Product> bandeja() {
		return service.listAll();
	}

	@GetMapping("/bandeja/{marca}")
	public List<Product> bandeja(@PathVariable(name = "marca") String marca) {

		List<Product> lista = new ArrayList<Product>();
		if (marca.contentEquals("0")) {
			lista = service.listAll();
		} else {
			lista = service.listAllByBrand(marca);
		}

		return lista;
	}

	@GetMapping("/obtenerxid/{id}")
	public Product showEditProductPage(@PathVariable(name = "id") int id) {
		Product product = service.get(id);
		return product;
	}

	@PutMapping("/editar")
	public HttpStatus showEditProductPage(@RequestBody Product product) {
		HttpStatus httpStatus;

		try {
			service.save(product);
			httpStatus = HttpStatus.OK;
			LOG.warn("Inserccion Exitosa");

		} catch (DataIntegrityViolationException e) {
			httpStatus = HttpStatus.INTERNAL_SERVER_ERROR;
			LOG.error(e.getStackTrace().toString());
		}
		return httpStatus;
	}

	@GetMapping("/bandejaprecio/{precio}")
	public List<Product> bandeja(@PathVariable(name = "precio") Float precio) {
		List<Product> lista = new ArrayList<Product>();
		lista = service.listAllByTopPrice(precio);

		return lista;

	}

	/*
	 * @PostMapping("/guardar") public HttpStatus showNewProductPage(@RequestBody
	 * Product product) { model.addAttribute("product", product); return
	 * HttpStatus.OK; }
	 */
}
