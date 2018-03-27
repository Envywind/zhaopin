package net.stxy.one.mapper;

import net.stxy.one.bean.Userlogin;

public interface UserregistMapper {
	public boolean insert(Userlogin userlogin);
	public Userlogin login(Userlogin userlogin);
}