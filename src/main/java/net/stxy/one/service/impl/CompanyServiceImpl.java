package net.stxy.one.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Company;
import net.stxy.one.bean.Wanted;
import net.stxy.one.mapper.CompanyMapper;
import net.stxy.one.service.CompanyService;
@Service
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private CompanyMapper companyMapper;
	
	@Override
	public Company selectByC_id(Integer C_id) {
		return companyMapper.selectByC_id(C_id);
	}

	@Override
	public int UpdateCompany(Company company) {
		// TODO Auto-generated method stub
		return companyMapper.UpdateCompany(company);
	}

	@Override
	public List<Wanted> selectWantedByC_id(Integer c_id) {
		// TODO Auto-generated method stub
		return companyMapper.selectWantedByC_id(c_id);
	}

	@Override
	public int deleteWanted(Integer w_id) {
		// TODO Auto-generated method stub
		
		return companyMapper.deleteWanted(w_id);
	}

	@Override
	public Wanted selectWantedByW_id(Integer w_id) {
		// TODO Auto-generated method stub
		return companyMapper.selectWantedByW_id(w_id);
	}

	@Override
	public int UpdateWanted(Wanted wanted) {
		// TODO Auto-generated method stub
		return companyMapper.UpdateWanted(wanted);
	}

	@Override
	public void insertWanted(Wanted wanted) {
		// TODO Auto-generated method stub
		companyMapper.insertWanted(wanted);
	}

	


}
