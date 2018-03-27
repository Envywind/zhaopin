package net.stxy.one.service;

import java.util.List;

import net.stxy.one.bean.User;

public interface AdminUserService {

	//查询用户链表
	public List<User> list();

	//通过关键字查询
	public List<User> selectByID(Integer u_id);

	//删除一个用户
	public int delete(String u_id);
}

