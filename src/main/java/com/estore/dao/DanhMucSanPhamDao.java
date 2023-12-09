package com.estore.dao;

import java.util.List;

import com.estore.entity.DanhMucSanPham;

public interface DanhMucSanPhamDao {
	
	DanhMucSanPham findById(Integer maDanhMuc);

	List<DanhMucSanPham> findAll();

	DanhMucSanPham create(DanhMucSanPham entity);

	void update(DanhMucSanPham entity);

	DanhMucSanPham delete(Integer maDanhMuc);
}
