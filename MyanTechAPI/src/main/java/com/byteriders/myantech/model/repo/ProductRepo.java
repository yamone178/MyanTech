package com.byteriders.myantech.model.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.byteriders.myantech.model.dto.output.ProductInfo;
import com.byteriders.myantech.model.entity.Product;

import jakarta.transaction.Transactional;

public interface ProductRepo extends JpaRepository<Product, Integer> {

	@Query("""
			SELECT new com.byteriders.myantech.model.dto.output.ProductInfo(
		       p.id, p.name, b.name, p.price, p.stock, p.cashback, p.serialNumber)
		       FROM Product p
		       JOIN p.brand b
			""")
	public List<ProductInfo> getAllProductInfo();
	
	@Query("Select p.stock from Product p where id = :id")
	public int findStockById(int id);
}
