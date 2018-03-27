package net.stxy.one.mapper;

import net.stxy.one.bean.Companylogin;


public interface CompanyloginMapper {
     public Companylogin companylogin(String c_name,String c_pwd);
     public boolean companyinsert(Companylogin companylogin);
}
