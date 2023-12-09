package com.estore.dao;

import java.util.List;

import com.estore.entity.Users;

public interface UsersDao {
	Users findById(String maDanhMuc);

	List<Users> findAll();

	Users create(Users entity);

	void update(Users entity);

	Users delete(String maDanhMuc);
}
