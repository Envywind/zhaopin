package net.stxy.one.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.stxy.one.bean.Company;

@Repository
public interface AdminCompanyMapper {

	//查询公司链表
	public List<Company> list();
	
	//通过关键字查询
	public List<Company> selectByName(Integer c_name);
	
	//注销公司
	public int update(String c_id);
}

