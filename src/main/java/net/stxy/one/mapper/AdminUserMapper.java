package net.stxy.one.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.stxy.one.bean.User;

@Repository
public interface AdminUserMapper {

	//查询用户链表
	public List<User> list();
	
	//通过关键字查询
	public List<User> selectByID(Integer u_id);
	
	//删除一个用户
	public int delete(String u_id);
}
