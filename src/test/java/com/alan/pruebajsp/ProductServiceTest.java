package com.alan.pruebajsp;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class ProductServiceTest {

	@Test
	public void test1() {	
		Product esperado = new Product();
		esperado.setId((long)3);
		esperado.setName("guitar");
		esperado.setBrand("jackson");
		esperado.setMadein("mexico");
		esperado.setPrice((float)8000);
		
		ProductService service = new ProductService();
		
		final Product resultado = service.get(3);
		
		Assertions.assertEquals(esperado, resultado);
	}
	
}
