package net.stxy.one.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.stxy.one.bean.Company;
import net.stxy.one.service.AdminCompanyService;


@Controller
@RequestMapping("/system/company")
public class AdminCompanyController {

	@Autowired
	private AdminCompanyService adminCompanyService;

	//公司列表
	//localhost:8080/Zpw/system/company/list.do
	@RequestMapping("/list")
	public String list(Model model) {
		List<Company> list = adminCompanyService.list();
		model.addAttribute("list", list);
		return "/System/companyinfo.jsp";
	}

	//注销公司
	//localhost:8080/Zpw/system/company/update.do
	@RequestMapping("/update")
	public String delete(String c_id, Model model) {
		int H = adminCompanyService.update(c_id);
		if(H > 0) {
			List<Company> list = adminCompanyService.list();
			model.addAttribute("list", list);
			return "/System/companyinfo.jsp";
		}
		return null;
	}

	//通过关键字查询
	//localhost:8080/Zpw/system/company/selectByName.do
	@RequestMapping("/selectByName")
	public String selectByName(@RequestParam("c_name") Integer c_name,Model model){
		List<Company> H = adminCompanyService.selectByName(c_name);
		model.addAttribute("list", H);
		return "/System/companyinfo.jsp";
	}
}

