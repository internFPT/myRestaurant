package poly.repository;

import poly.domain.Order;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

public interface OrderRepository extends JpaRepository<Order, String>{
	List<Order> findByCustomer_CustomerID(String customerID);
	 @Transactional
	 void deleteByCustomer_CustomerID(String customerID);
}
