package poly.repository;

import poly.domain.Delivery;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.transaction.annotation.Transactional;

public interface DeliveryRepository extends JpaRepository<Delivery, String>{
	 @Transactional
	void deleteByOrders_OrderID(String orderID);
}
