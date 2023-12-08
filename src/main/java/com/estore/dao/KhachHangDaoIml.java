package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.estore.entity.KhachHang;

@Transactional
@Repository
public class KhachHangDaoIml implements KhachHangDao {

	@Autowired
	SessionFactory factory;

	public KhachHang findById(String maDanhMuc) {
		Session session = factory.getCurrentSession();

		KhachHang entity = session.find(KhachHang.class, maDanhMuc);
		return entity;
	}

	public List<KhachHang> findAll() {
		String hql = "From KhachHang";
		Session session = factory.getCurrentSession();
		TypedQuery<KhachHang> query = session.createQuery(hql, KhachHang.class);
		List<KhachHang> list = query.getResultList();
		return list;
	}

	public KhachHang create(KhachHang entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(KhachHang entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public KhachHang delete(String maDanhMuc) {
		Session session = factory.getCurrentSession();
		KhachHang entity = session.find(KhachHang.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

}
