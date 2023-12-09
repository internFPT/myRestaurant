package com.estore.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.estore.entity.SanPham;

@Transactional
@Repository
public class SanPhamDaoIml implements SanPhamDao {

	@Autowired
	SessionFactory factory;

	public SanPham findById(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();

		SanPham entity = session.find(SanPham.class, maDanhMuc);
		return entity;
	}

	public List<SanPham> findAll() {
		String hql = "From SanPham";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		List<SanPham> list = query.getResultList();
		return list;
	}

	public SanPham create(SanPham entity) {
		Session session = factory.getCurrentSession();
		session.save(entity);
		return entity;
	}

	public void update(SanPham entity) {
		Session session = factory.getCurrentSession();
		session.update(entity);

	}

	public SanPham delete(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		SanPham entity = session.find(SanPham.class, maDanhMuc);
		session.delete(entity);
		return entity;
	}

	@Override
	public List<SanPham> findByKeyword(String keywords) {

		String hql = "FROM SanPham s where s.tenSanPham LIKE:kw OR s.danhMucSanPham.tenDanhMuc LIKE:kw";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setParameter("kw", "%" + keywords + "%");
		List<SanPham> list = query.getResultList();
		return list;

	}

	@Override
	public List<SanPham> findByDanhMucSPId(Integer maDanhMuc) {
		String hql = "From SanPham sp WHERE sp.danhMucSanPham.maDanhMuc =:cid ";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setParameter("cid", maDanhMuc);
		List<SanPham> list = query.getResultList();

		return list;
	}

	@Override
	public List<SanPham> findByIDs(String ids) {
		String hql = "FROM SanPham s WHERE s.maSanPham IN (" + ids + ")";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		List<SanPham> list = query.getResultList();
		return list;
	}

	@Override
	public List<SanPham> findBySanPhamQT(Integer maDanhMuc) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPham s ORDER BY s.luotXem DESC";
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setMaxResults(4);
		List<SanPham> list = query.getResultList();
		return list;
	}

	@Override
	public List<SanPham> findByGiaTangDan() {
		String hql = "From SanPham s ORDER BY s.giaGoc ASC";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setMaxResults(16);
		List<SanPham> list = query.getResultList();
		return list;
	}

	@Override
	public List<SanPham> findByGiaGiamDan() {
		String hql = "From SanPham s ORDER BY s.giaGoc DESC";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setMaxResults(16);
		List<SanPham> list = query.getResultList();
		return list;
	}

	@Override
	public List<SanPham> findByTenAZ() {
		String hql = "From SanPham s ORDER BY s.tenSanPham ASC";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setMaxResults(16);
		List<SanPham> list = query.getResultList();
		return list;
	}

	@Override
	public List<SanPham> findByTenZA() {
		String hql = "From SanPham s ORDER BY s.tenSanPham DESC";
		Session session = factory.getCurrentSession();
		TypedQuery<SanPham> query = session.createQuery(hql, SanPham.class);
		query.setMaxResults(16);
		List<SanPham> list = query.getResultList();
		return list;
	}

}
