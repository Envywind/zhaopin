package net.stxy.one.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Userlogin;
import net.stxy.one.mapper.UserregistMapper;
import net.stxy.one.service.UserregistService;
@Service
public class UserregistServiceImpl implements UserregistService {
	@Autowired
	private UserregistMapper userregistMapper;
	private boolean flag;
	@Override
	public boolean insert(Userlogin userlogin) {
		try {
		flag=  userregistMapper.insert(userlogin);
		if(flag) {
			return flag;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
        
	}
	@Override
	public Userlogin login(Userlogin userlogin) {
		
		return userregistMapper.login(userlogin);
	}

}