package net.stxy.one.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Company;
import net.stxy.one.mapper.AdminCompanyMapper;
import net.stxy.one.service.AdminCompanyService;

@Service
public class AdminCompanyServiceImpl implements AdminCompanyService {

	@Autowired
	private AdminCompanyMapper adminCompanyMapper;
	
	@Override
	public List<Company> list() {
		return adminCompanyMapper.list();
	}

	@Override
	public List<Company> selectByName(Integer c_name) {
		return adminCompanyMapper.selectByName(c_name);
	}

	@Override
	public int update(String c_id) {
		return adminCompanyMapper.update(c_id);
	}

}
