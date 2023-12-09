package com.estore.dao;

import java.util.List;

import com.estore.entity.SanPham;



public interface SanPhamDao {
	SanPham findById(Integer maDanhMuc);

	List<SanPham> findAll();

	SanPham create(SanPham entity);

	void update(SanPham entity);

	SanPham delete(Integer maDanhMuc);

	 List<SanPham> findByKeyword(String keywords);

	List<SanPham> findByDanhMucSPId(Integer maDanhMuc);

	List<SanPham> findByIDs(String ids);

	List<SanPham> findBySanPhamQT(Integer maDanhMuc);

	List<SanPham> findByGiaTangDan();

	List<SanPham> findByGiaGiamDan();

	List<SanPham> findByTenAZ();

	List<SanPham> findByTenZA(); 
}
