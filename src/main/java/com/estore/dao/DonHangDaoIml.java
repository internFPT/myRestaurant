package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.estore.entity.DonHang;
import com.estore.entity.DonHangChiTiet;
import com.estore.entity.KhachHang;
import com.estore.entity.SanPham;

@Transactional
@Repository
public class DonHangDaoIml implements DonHangDao {

	@Autowired
	SessionFactory factory;

	public DonHang findById(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();

		DonHang entity = session.find(DonHang.class, maDanhMuc);
		return entity;
	}

	public List<DonHang> findAll() {
		String hql = "From DonHang";
		Session session = factory.getCurrentSession();
		TypedQuery<DonHang> query = session.createQuery(hql, DonHang.class);
		List<DonHang> list = query.getResultList();
		return list;
	}

	public DonHang create(DonHang entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(DonHang entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public DonHang delete(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		DonHang entity = session.find(DonHang.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

	@Override
	public void create(DonHang donHang, List<DonHangChiTiet> details) {
		Session session = factory.getCurrentSession();
		session.save(donHang);
		for (DonHangChiTiet detail : details) {
			session.save(detail);
		}
	}

	@Override
	public List<DonHang> findByUser(KhachHang khachHang) {
		String hql = "From DonHang d where d.khachHang.maKhachHang =:uid ORDER BY d.ngayDatHang DESC ";
		Session session = factory.getCurrentSession();
		TypedQuery<DonHang> query = session.createQuery(hql, DonHang.class);
		query.setParameter("uid", khachHang.getMaKhachHang());
		List<DonHang> list = query.getResultList();
		return list;
	}

	@Override
	public List<SanPham> findItemsByUser(KhachHang khachHang) {

		String hql = "SELECT DISTINCT d.sanPham " + " From DonHangChiTiet d" + " where d.donHang.khachHang.maKhachHang =:uid";

		/*
		 * String hql =
		 * "SELECT sp.maSanPham From DonHangChiTiet dhct inner join DonHang dh" +
		 * "on dh.maDonHang = dhct.maDonHang inner join SanPham sp" +
		 * "on sp.maSanPham = dhct.maSanPham inner join KhachHang kh" +
		 * "on kh.maKhachHang = dh.maKhachHang  where kh.maKhachHang =:uid GROUP BY sp.maSanPham"
		 * ;
		 */
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setParameter("uid", khachHang.getMaKhachHang());
		List<SanPham> list = query.getResultList();
		return list;
	}
}
