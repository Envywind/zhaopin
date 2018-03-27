package net.stxy.one.service;

import java.util.List;

import net.stxy.one.bean.Company;

public interface AdminCompanyService {

	//查询公司链表
	public List<Company> list();
	
	//通过关键字查询
	public List<Company> selectByName(Integer c_name);
	
	//注销公司
	public int update(String c_id);
}
