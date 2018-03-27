package net.stxy.one.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.stxy.one.bean.Company;
import net.stxy.one.bean.Wanted;
import net.stxy.one.service.CompanyService;

@Controller
@RequestMapping("/company")
public class CompanyController {

	@Autowired
	private CompanyService companyService;
//	查自己公司信息
//	localhost:8080/wanted2/company/companyById.do?C_id=2
	@RequestMapping("/companyById")
	public String selectByC_id(@RequestParam("C_id") Integer C_id,Model model) {
		Company C = companyService.selectByC_id(C_id);
		model.addAttribute("companyList",C);
		return "/companyList-id.jsp";
		
	}
	
//	查自己公司信息
//	localhost:8080/wanted2/company/companyById2.do?C_id=2
	@RequestMapping("/companyById2")
	public String selectByC_id2(@RequestParam("C_id") Integer C_id,Model model) {
		Company C = companyService.selectByC_id(C_id);
		model.addAttribute("companyList",C);
		return "/companyAddWanted.jsp";
		
	}

	
//	修改公司的密码
//	localhost:8080/wanted2/company/companyUpD.do
	@RequestMapping("/companyUpD")
	public String UpdateCompany(Company company,Model model) {
		int C = companyService.UpdateCompany(company);
		if (C>0) {
			 model.addAttribute("companyList",C);
			 return "/companyUpMeSu.jsp";
		}
		return null;
	
		
	}
//  根据c_id 查看公司发布招聘的信息
//	localhost:8080/wanted2/company/companyListWanted.do?c_id=2
	@RequestMapping("/companyListWanted")
	public String selectWantedMe(@RequestParam("c_id") Integer c_id,Model model) {
		List<Wanted> W = companyService.selectWantedByC_id(c_id);
		model.addAttribute("companyWantedList",W);
		return "/companyWantedLists.jsp";
		
	}
	
	
	@RequestMapping("/companyListWanted2")
	public String selectWantedMe2(@RequestParam("c_id") Integer c_id,Model model) {
		List<Wanted> W = companyService.selectWantedByC_id(c_id);
		System.out.println(W);
		model.addAttribute("companyWantedList",W);
		return "/WantedShow.jsp";
		
	}
	
	
	@RequestMapping("/companyListWanted3")
	public String selectWantedMe3(@RequestParam("c_id") Integer c_id,Model model) {
		List<Wanted> W = companyService.selectWantedByC_id(c_id);
		model.addAttribute("companyWantedList",W);
		return "/postResume.jsp";
		
	}
//  根据w_id 删除公司发布的招聘信息
//	localhost:8080/wanted2/company/companyDeleWanted.do
	@RequestMapping("/companyDeleWanted")
	public String deleteWanted(@RequestParam("w_id") Integer w_id) {
		System.out.println(w_id);
		companyService.deleteWanted(w_id);
		return "/companyDeleWantSu.jsp";
		
	}
//	根据w_id 查看公司某个招聘的详细信息
	@RequestMapping("/companySeleOneWanted")
	public String selectOneWanted(@RequestParam("w_id") Integer w_id,Model model) {
		Wanted W = companyService.selectWantedByW_id(w_id);
		model.addAttribute("companyWantedOne", W);
		return "/companyWantedShow.jsp";
		
	}
//	根据w_id 修改招聘信息
//	localhost:8080/wanted2/company/companyUpDWanted.do
	@RequestMapping("/companyUpDWanted")
	public String updateWanted(Wanted wanted) {
		int W = companyService.UpdateWanted(wanted);
		if(W >0) {
			return "/companyUpWantedSu.jsp";
		}
		else return null;
		
	}
	//根据c_id 发布招聘信息
//	localhost:8080/wanted2/company/companyAddWanted.do
    @RequestMapping("/companyAddWanted")
    public String addWanted(Wanted wanted) {
    	companyService.insertWanted(wanted);
    	return "/companyUpWantedSu.jsp";
    }
	
}