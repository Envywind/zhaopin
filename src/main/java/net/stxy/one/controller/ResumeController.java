package net.stxy.one.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import net.stxy.one.bean.Resume;
import net.stxy.one.service.ResumeService;

@Controller
@RequestMapping("/resume")
public class ResumeController {

	@Autowired
	private ResumeService resumeService;

	// 查看该公司所有的投简信息
	// localhost://8080/wanted2/resume/resumeByC_id.do?C_id=1
	@RequestMapping("/resumeByC_id")
	public String selectResumeByC_id(@RequestParam("c_id") Integer c_id, Model model) {
		System.out.println(c_id);
		List<Resume> R = resumeService.selectResumeByC_id(c_id);
		model.addAttribute("list", R);
		return "/resume.jsp";
	}

	// localhost:8080/wanted2/resume/list.do
	@RequestMapping("/list")
	public String list(Model model) {
		List<Resume> list = resumeService.list();
		model.addAttribute("list", list);
		return "/resume.jsp";
	}

	// 通过审核
	// localhost:8080/wanted2/resume/update1.do
	@RequestMapping("/updateResume1")
	public String updateResume1(String r_id, Model model) {
		int H = resumeService.UpdateResume1(r_id);
		if (H > 0) {
			List<Resume> list = resumeService.list();
			model.addAttribute("list", list);
			return "/resume.jsp";
		}
		return null;
	}

	// 不通过审核
	// localhost:8080/wanted2/resume/update2.do
	@RequestMapping("/updateResume2")
	public String updateResume2(String r_id, Model model) {
		int H = resumeService.UpdateResume2(r_id);
		if (H > 0) {
			List<Resume> list = resumeService.list();
			model.addAttribute("list", list);
			return "/resume.jsp";
		}
		return null;
	}
}
