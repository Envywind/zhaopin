package net.stxy.one.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.stxy.one.bean.Companylogin;
import net.stxy.one.bean.Userlogin;
import net.stxy.one.service.CompanyloginService;



@Controller
@RequestMapping("/zhaoping")
public class CompanyloginController {
	@Autowired
	private CompanyloginService companyloginService;
	@RequestMapping("/companylogin")
	public String login1(Companylogin companylogin,Model model,@RequestParam("c_name") String c_name,@RequestParam("c_pwd") String c_pwd,HttpServletRequest request) {
		
		Companylogin com=companyloginService.companylogin(c_name,c_pwd);
		System.out.println(c_name);
		HttpSession session=request.getSession();
		String c_static=(String)request.getAttribute("c_static");
		
		model.addAttribute("companylogin",com);
		session.setAttribute("c_id", com.getC_id());
		if(com!=null) {
			session.setAttribute("companylogin",com);
			if("1".equals(com.getC_aduit())) {
			
			return "/companyManage.jsp";
			}
		}
		
		return "/companyLogin.jsp";
		
	}
	@RequestMapping("/companyinsert")
	public String save1(Companylogin companylogin) {
		boolean h=companyloginService.companyinsert(companylogin);
		if(h) {
		return "/tiaozhuan.jsp";
		}
		return "/tiaozhuanc.jsp";
	}
//	@ResponseBody
//	      @RequestMapping(value="queryByUser", method=RequestMethod.POST,produces="application/json;charset=UTF-8")  
//	     public Companylogin queryByName(Companylogin companylogin,@RequestParam("c_name") String c_name,@RequestParam("c_pwd") String c_pwd,HttpServletRequest request){
//		Companylogin u = companyloginService.companylogin(c_name, c_pwd);
//	         return u;
//	     }
	 @RequestMapping("/outLogina")
	    public String outLogin(HttpSession session){
	        //通过session.invalidata()方法来注销当前的session
	        session.invalidate();
	        return "/tiaozhuana.jsp";
	    }
}
