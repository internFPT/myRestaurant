package poly.repository;

import poly.domain.Cart;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface CartRepository extends JpaRepository<Cart, String>{
	List<Cart> findByCustomer_CustomerID(String customerID);
	 @Transactional
	 void deleteByCustomer_CustomerID(String customerID);
	 
	 @Query("SELECT COUNT(c) FROM Cart c WHERE c.customer.customerID = :customerID")
	    Long countByCustomerID(@Param("customerID") String customerID);
}
