package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.estore.entity.Users;

@Transactional
@Repository
public class UsersDaoIml implements UsersDao {

	@Autowired
	SessionFactory factory;

	public Users findById(String taiKhoan) {
		Session session = factory.getCurrentSession();

		Users entity = session.find(Users.class, taiKhoan);
		return entity;
	}

	public List<Users> findAll() {
		String hql = "From Users";
		Session session = factory.getCurrentSession();
		TypedQuery<Users> query = session.createQuery(hql, Users.class);
		List<Users> list = query.getResultList();
		return list;
	}

	public Users create(Users entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(Users entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public Users delete(String maDanhMuc) {
		Session session = factory.getCurrentSession();
		Users entity = session.find(Users.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

}
