package net.stxy.one.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Resume;
import net.stxy.one.bean.User;
import net.stxy.one.mapper.UserMapper;
import net.stxy.one.service.UserService;

@Service
public  class UserServiceimpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User select (String u_id) {
		return userMapper.select(u_id);
	}

	@Override
	public int update(User user) {
		return userMapper.update(user);
	}

	@Override
	public List<Resume> list(String u_id) {
		return userMapper.list(u_id);
	}

	@Override
	public void insert(Resume resume) {
	    userMapper.insert(resume);
	}

	
}
