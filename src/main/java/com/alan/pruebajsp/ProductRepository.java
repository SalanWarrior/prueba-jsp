package com.alan.pruebajsp;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
	List<Product> findByBrand(String brand);
	List<Product> findByPriceBetween(float start, float end);
}
