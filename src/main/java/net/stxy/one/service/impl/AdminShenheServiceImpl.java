package net.stxy.one.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Company;
import net.stxy.one.mapper.AdminShenheMapper;
import net.stxy.one.service.AdminShenheService;

@Service
public class AdminShenheServiceImpl implements AdminShenheService {

	@Autowired
	private AdminShenheMapper adminShenheMapper;
	@Override
	public List<Company> list() {
		return adminShenheMapper.list();
	}

	@Override
	public int update1(String c_id) {
		return adminShenheMapper.update1(c_id);
	}

	@Override
	public int update2(String c_id) {
		return adminShenheMapper.update2(c_id);
	}

}
