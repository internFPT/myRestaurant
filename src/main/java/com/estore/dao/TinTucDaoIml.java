package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.estore.entity.TinTuc;

@Transactional
@Repository
public class TinTucDaoIml implements TinTucDao {

	@Autowired
	SessionFactory factory;

	public TinTuc findById(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();

		TinTuc entity = session.find(TinTuc.class, maDanhMuc);
		return entity;
	}

	public List<TinTuc> findAll() {
		String hql = "From TinTuc";
		Session session = factory.getCurrentSession();
		TypedQuery<TinTuc> query = session.createQuery(hql, TinTuc.class);
		List<TinTuc> list = query.getResultList();
		return list;
	}

	public TinTuc create(TinTuc entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(TinTuc entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public TinTuc delete(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		TinTuc entity = session.find(TinTuc.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

}
