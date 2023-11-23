package poly.repository;

import poly.domain.Category;
import poly.domain.Dish;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DishRepository extends JpaRepository<Dish, String> {
  List<Dish> findByNameContaining(String name);
  Page<Dish> findByNameContaining(String name, Pageable pageable);
  Page<Dish> findByNameContaining(Category categories, Pageable pageable);
}
