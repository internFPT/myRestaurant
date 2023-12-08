package com.estore.dao;

import java.util.List;

import com.estore.entity.DonHang;
import com.estore.entity.DonHangChiTiet;



public interface DonHangChiTietDao {
	DonHangChiTiet findById(Integer maDanhMuc);

	List<DonHangChiTiet> findAll();

	DonHangChiTiet create(DonHangChiTiet entity);

	void update(DonHangChiTiet entity);

	DonHangChiTiet delete(Integer maDanhMuc);

	List<DonHangChiTiet> findByOder(DonHang donHang);
}
