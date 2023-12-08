package com.estore.dao;

import java.util.List;

import com.estore.entity.DonHang;
import com.estore.entity.DonHangChiTiet;
import com.estore.entity.KhachHang;
import com.estore.entity.SanPham;

public interface DonHangDao {
	com.estore.entity.DonHang findById(Integer maDanhMuc);

	List<DonHang> findAll();

	DonHang create(DonHang entity);

	void update(DonHang entity);

	DonHang delete(Integer maDanhMuc);

	void create(DonHang donHang, List<DonHangChiTiet> details);

	List<DonHang> findByUser(KhachHang khachHang);

	List<SanPham> findItemsByUser(KhachHang khachHang);
}
