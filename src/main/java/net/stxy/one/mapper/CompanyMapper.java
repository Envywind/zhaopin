package net.stxy.one.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import net.stxy.one.bean.Company;
import net.stxy.one.bean.Wanted;

@Repository
public interface CompanyMapper {

	//	根据C_id 显示公司信息
	public Company selectByC_id(Integer c_id);
	//	估计c_id 去修改公司信息
	public int UpdateCompany(Company company);
	//    根据c_id 查看公司发布招聘的信息
	public List<Wanted> selectWantedByC_id(Integer c_id);
	//    根据w_id 删除公司发布的招聘信息
	public int deleteWanted(Integer w_id);
	//	根据w_id 查看公司某个招聘的详细信息
	public Wanted selectWantedByW_id(Integer w_id);
	//	根据w_id 修改招聘信息
	public int UpdateWanted(Wanted wanted);
	//根据c_id 添加一条招聘信息
	public void insertWanted(Wanted wanted);
}
