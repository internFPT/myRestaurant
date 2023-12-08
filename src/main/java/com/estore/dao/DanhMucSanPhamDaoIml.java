package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.estore.entity.DanhMucSanPham;


@Transactional
@Repository
public class DanhMucSanPhamDaoIml implements DanhMucSanPhamDao {

	@Autowired
	SessionFactory factory;

	public DanhMucSanPham findById(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		DanhMucSanPham entity = session.find(DanhMucSanPham.class, maDanhMuc);
		return entity;
	}

	public List<DanhMucSanPham> findAll() {
		String hql = "From DanhMucSanPham";
		Session session = factory.getCurrentSession();
		TypedQuery<DanhMucSanPham> query = session.createQuery(hql, DanhMucSanPham.class);
		List<DanhMucSanPham> list = query.getResultList();
		return list;
	}

	public DanhMucSanPham create(DanhMucSanPham entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(DanhMucSanPham entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public DanhMucSanPham delete(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		DanhMucSanPham entity = session.find(DanhMucSanPham.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

}