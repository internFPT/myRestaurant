package com.estore.dao;
import java.util.List;

import com.estore.entity.AnhBia;

public interface AnhBiaDao {
	AnhBia findById(Integer maDanhMuc);

	List<AnhBia> findAll();

	AnhBia create(AnhBia entity);

	void update(AnhBia entity);

	AnhBia delete(Integer maDanhMuc);
}
