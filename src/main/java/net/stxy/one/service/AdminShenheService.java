package net.stxy.one.service;

import java.util.List;

import net.stxy.one.bean.Company;

public interface AdminShenheService {

	//查询需要审核的公司
	public List<Company> list();

	//通过审核
	public int update1(String c_id);

	//不通过审核
	public int update2(String c_id);
}
