package net.stxy.one.service;

import net.stxy.one.bean.Companylogin;
import net.stxy.one.bean.Userlogin;

public interface CompanyloginService {
	public Companylogin companylogin(String c_name,String c_pwd);
	public boolean companyinsert(Companylogin companylogin);
}
