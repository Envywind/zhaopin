package net.stxy.one.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.User;
import net.stxy.one.mapper.AdminUserMapper;
import net.stxy.one.service.AdminUserService;

@Service
public class AdminUserServiceImpl implements AdminUserService{

	@Autowired
	private AdminUserMapper adminUserMapper;
	
	@Override
	public List<User> list() {
		return adminUserMapper.list();
	}

	@Override
	public int delete(String u_id) {
		return adminUserMapper.delete(u_id);
	}

	@Override
	public List<User> selectByID(Integer u_id) {
		return adminUserMapper.selectByID(u_id);
	}

}
