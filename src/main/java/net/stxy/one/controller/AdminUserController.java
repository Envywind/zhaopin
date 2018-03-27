package net.stxy.one.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.stxy.one.bean.User;
import net.stxy.one.service.AdminUserService;

@Controller
@RequestMapping("/system/user")
public class AdminUserController {

	@Autowired
	private AdminUserService adminUserService;

	//用户列表
	//localhost:8080/Zpw/system/user/list.do
	@RequestMapping("/list")
	public String list(Model model) {
		List<User> list = adminUserService.list();
		model.addAttribute("list", list);
		return "/System/userinfo.jsp";
	}

	//删除用户
	//localhost:8080/Zpw/system/user/delete.do
	@RequestMapping("/delete")
	public String delete(String u_id, Model model) {
		int H = adminUserService.delete(u_id);
		if(H > 0) {
			List<User> list = adminUserService.list();
			model.addAttribute("list", list);
			return "/System/userinfo.jsp";
		}
		return null;
	}

	//通过关键字查询
	//localhost:8080/Zpw/system/user/selectByID.do
	@RequestMapping("/selectByID")
	public String selectByID(@RequestParam("u_id") Integer u_id,Model model){
		List<User> H = adminUserService.selectByID(u_id);
		System.out.println(H);
		model.addAttribute("list", H);
		return "/System/userinfo.jsp";
	}
}
