package net.stxy.one.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import net.stxy.one.bean.Companylogin;
import net.stxy.one.mapper.CompanyloginMapper;
import net.stxy.one.service.CompanyloginService;
@Service
public class CompanyloginServiceImpl implements CompanyloginService{
	@Autowired
	private CompanyloginMapper companyloginMapper;
	private boolean flag;
	@Override
	public Companylogin companylogin(String c_name,String c_pwd) {
		return companyloginMapper.companylogin(c_name,c_pwd);
		
	}
	@Override
	public boolean companyinsert(Companylogin companylogin) {
		try {
			flag=  companyloginMapper.companyinsert(companylogin);
			if(flag) {
				return flag;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return flag;
	        
		}
}
