package net.stxy.one.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import net.stxy.one.bean.Userlogin;
import net.stxy.one.service.UserregistService;



@Controller
@RequestMapping("/zhaoping")
public class UserregistController {
	
	@Autowired
	private UserregistService userregistService;
	@RequestMapping("/save")
	public String save(Userlogin userlogin) {
		boolean h=userregistService.insert(userlogin);
		if(h) {
		return "/indexLogin.jsp";
		}
		return "/tiaozhuanb.jsp";
	}
	@RequestMapping("/login")
	public String login(Userlogin userlogin,Model model,HttpServletRequest request) {
		Userlogin H = userregistService.login(userlogin);
		String u_role=(String)request.getParameter("u_role");
		HttpSession session=request.getSession();
		model.addAttribute("userlogin",H);
	
		if (H !=null) {
			session.setAttribute("userlogin",H);
			
			if(u_role.equals("用户")&&u_role.equals(userlogin.getU_role())) {
				if("1".equals(H.getU_static())) {
			return "/indexLogin.jsp";
				}
			}
			else if(u_role.equals("管理员")&&u_role.equals(userlogin.getU_role())) {
				if("1".equals(H.getU_static())) {
				return "/System/index.jsp";
				}
			}
			}
		
		return "/indexUnlogin.jsp";
	}
	 @RequestMapping("/outLogin")
	    public String outLogin(HttpSession session){
	        //通过session.invalidata()方法来注销当前的session
	        session.invalidate();
	        return "/tiaozhuana.jsp";
	    }
}

