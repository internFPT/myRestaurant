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



@Transactional
@Repository
public class DonHangChiTietDaoIml implements DonHangChiTietDao {

	@Autowired
	SessionFactory factory;

	public DonHangChiTiet findById(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();

		DonHangChiTiet entity = session.find(DonHangChiTiet.class, maDanhMuc);
		return entity;
	}

	public List<DonHangChiTiet> findAll() {
		String hql = "From DonHangChiTiet";
		Session session = factory.getCurrentSession();
		TypedQuery<DonHangChiTiet> query = session.createQuery(hql, DonHangChiTiet.class);
		List<DonHangChiTiet> list = query.getResultList();
		return list;
	}

	public DonHangChiTiet create(DonHangChiTiet entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(DonHangChiTiet entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public DonHangChiTiet delete(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		DonHangChiTiet entity = session.find(DonHangChiTiet.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

	@Override
	public List<DonHangChiTiet> findByOder(DonHang donHang) {
		String hql = "From DonHangChiTiet d where d.donHang.maDonHang=:oid";
		Session session = factory.getCurrentSession();
		TypedQuery<DonHangChiTiet> query = session.createQuery(hql, DonHangChiTiet.class);
		query.setParameter("oid", donHang.getMaDonHang());
		List<DonHangChiTiet> list = query.getResultList();
		return list;
	}

}
