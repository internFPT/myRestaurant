package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.estore.entity.AnhBia;

@Transactional
@Repository
public class AnhBiaDaoIml implements AnhBiaDao {

	@Autowired
	SessionFactory factory;

	public AnhBia findById(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();

		AnhBia entity = session.find(AnhBia.class, maDanhMuc);
		return entity;
	}

	public List<AnhBia> findAll() {
		String hql = "From AnhBia ";
		Session session = factory.getCurrentSession();
		TypedQuery<AnhBia> query = session.createQuery(hql, AnhBia.class);
		List<AnhBia> list = query.getResultList();
		return list;
	}

	public AnhBia create(AnhBia entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(AnhBia entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public AnhBia delete(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		AnhBia entity = session.find(AnhBia.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

}
