package com.estore.dao;
import java.util.List;

import com.estore.entity.TinTuc;

public interface TinTucDao {
	TinTuc findById(Integer maDanhMuc);

	List<TinTuc> findAll();

	TinTuc create(TinTuc entity);

	void update(TinTuc entity);

	TinTuc delete(Integer maDanhMuc);
}
