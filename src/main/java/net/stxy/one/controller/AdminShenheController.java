package net.stxy.one.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.stxy.one.bean.Company;
import net.stxy.one.service.AdminShenheService;

@Controller
@RequestMapping("/system/shenhe")
public class AdminShenheController {

	@Autowired
	private AdminShenheService adminShenheService;
	//查询未审核的公司
	//localhost:8080/Zpw/system/shenhe/list.do
	@RequestMapping("/list")
	public String list(Model model) {
		List<Company> list = adminShenheService.list();
		model.addAttribute("list", list);
		return "/System/shenhe.jsp";
	}

	//通过审核
	//localhost:8080/Zpw/system/shenhe/update1.do
	@RequestMapping("/update1")
	public String update1(String c_id, Model model) {
		int H = adminShenheService.update1(c_id);
		if(H > 0) {
			List<Company> list = adminShenheService.list();
			model.addAttribute("list", list);
			return "/System/shenhe.jsp";
		}
		return null;
	}

	//不通过审核
	//localhost:8080/Zpw/system/shenhe/update2.do
	@RequestMapping("/update2")
	public String update2(String c_id, Model model) {
		int H = adminShenheService.update2(c_id);
		if(H > 0) {
			List<Company> list = adminShenheService.list();
			model.addAttribute("list", list);
			return "/System/shenhe.jsp";
		}
		return null;
	}


}
