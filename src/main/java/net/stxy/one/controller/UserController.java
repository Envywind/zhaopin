package net.stxy.one.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.stxy.one.bean.Resume;
import net.stxy.one.bean.User;
import net.stxy.one.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	//查询个人信息
	@RequestMapping("/select")
	public String select(@RequestParam("u_id") String u_id,Model model) {
			User A = userService.select(u_id);
			model.addAttribute("userList", A);
			System.out.println(A);
			return "/user.jsp";
		}
	
	//修改个人信息
	@RequestMapping("/update")
	public String update(User user,Model model) {
		int A = userService.update(user);
		if(A>0) {
			User B = userService.select(user.getU_id());
			model.addAttribute("userList", B);
			return "/user.jsp";
		}
		return null;
	}
	
	//查询投简信息
	@RequestMapping("/list")
	public String list(@RequestParam("u_id") String u_id, Model model) {
		   List<Resume> A = userService.list(u_id);
		   System.out.println(A);
		   model.addAttribute("saveList", A);
		   return "/selectResume.jsp";
	}
	//增加投简信息
	@RequestMapping("/save")
	public String save(Resume resume) {
		userService.insert(resume);
		return null;
	} 
}
