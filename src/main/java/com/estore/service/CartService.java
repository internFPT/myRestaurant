package com.estore.service;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.estore.dao.SanPhamDao;
import com.estore.entity.SanPham;

@SessionScope //Name: scopedTarget.cartService
@Service
public class CartService {

	@Autowired
	SanPhamDao dao;
	Map<Integer, SanPham> map = new HashMap<>();

	public void add(Integer id) {
		SanPham s = map.get(id);
		if (s == null) {
			s = dao.findById(id);
			s.setSoLuong(1);
			map.put(id, s);
		} else {
			s.setSoLuong(s.getSoLuong() + 1);
		}

	}

	public void remove(Integer id) {
		map.remove(id);
	}

	public void update(Integer id, int qty) {
		SanPham s = map.get(id);
		s.setSoLuong(qty);
	}

	public void clear() {
		map.clear();
	}

	public int getCount() {
		Collection<SanPham> sp = this.getItems();
		int count = 0;
		for (SanPham s : sp) {
			count += s.getSoLuong();
		}
		return count;
	}

	public double getAmount() {
		Collection<SanPham> sp = this.getItems();
		double amount = 0;
		for (SanPham s : sp) {
			amount += (s.getSoLuong() * s.getGiaGoc() *(1-s.getKhuyenMai()));
		}
		return amount;
	}

	public Collection<SanPham> getItems() {
		return map.values();
	}
}
