package com.estore.dao;

import java.util.List;

import com.estore.entity.KhachHang;

public interface KhachHangDao {
	KhachHang findById(String maDanhMuc);

	List<KhachHang> findAll();

	KhachHang create(KhachHang entity);

	void update(KhachHang entity);

	KhachHang delete(String maDanhMuc);
}
