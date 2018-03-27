package net.stxy.one.service;

import java.util.List;

import net.stxy.one.bean.Resume;
import net.stxy.one.bean.User;

public interface UserService {
	
	public User select(String u_id);
	
	public int update(User user);
	
	public List<Resume> list(String u_id);
	
	public void insert(Resume resume);
}
