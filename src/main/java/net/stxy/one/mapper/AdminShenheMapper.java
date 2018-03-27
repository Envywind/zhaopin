package net.stxy.one.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.stxy.one.bean.Company;

@Repository
public interface AdminShenheMapper {

	//查询需要审核的公司
	public List<Company> list();

	//通过审核
	public int update1(String c_id);

	//不通过审核
	public int update2(String c_id);
}
