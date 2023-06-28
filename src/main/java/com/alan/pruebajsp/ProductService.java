package com.alan.pruebajsp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	@Autowired
	private ProductRepository repo;

	public List<Product> listAll() {
		return repo.findAll();
	}

	public void save(Product product) {
		repo.save(product);
	}

	public Product get(long id) {
		return repo.findById(id).get();
	}

	public void delete(long id) {
		repo.deleteById(id);
	}

	public List<Product> listAllByBrand(String brand) {
		return repo.findByBrand(brand);
	}

	public List<Product> listAllByTopPrice(Float price) {
		return repo.findByPriceBetween(0, price);
	}
}
