package net.stxy.one.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.stxy.one.bean.Company;
import net.stxy.one.bean.Resume;
import net.stxy.one.bean.User;

@Repository
public interface UserMapper {
	
	//查找一个人的数据
	public User select(String u_id);
	
	//修改一个人的数据
	public int update(User user);
	
	//查看投简信息
	public List<Resume> list(String u_id);
	
	//增加投简信息
	public void insert(Resume resume);

}
