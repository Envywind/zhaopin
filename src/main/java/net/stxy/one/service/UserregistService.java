package net.stxy.one.service;


import net.stxy.one.bean.Userlogin;

public interface UserregistService {
	public boolean insert(Userlogin userlogin);
	public Userlogin login(Userlogin userlogin);
}
