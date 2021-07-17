package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;
import pojo.User;
import service.UserService;

@Controller

public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/login")
	public String userList() throws Exception{
		
		
		return "login";
		
	}
	//管理员或用户登录
	@RequestMapping("/logincheck")
	public String login(User user,Model model,HttpSession httpSession) throws Exception{
		
		User user1=userService.login(user);
		
		if(user1!=null){
			httpSession.setAttribute("user", user1);
			if(user1.getType().equals("zuke")){
				return "zuke/main";
			}
			else{
				return "admin/main1";
			}
		}else{
			String error="error";
			model.addAttribute("error", error);
		return "login";
		}
	}
	@RequestMapping("/toindex")
	public String toindex(Model model) throws Exception{
		
		
		return "admin/index";
		}
		//注册用户
		@RequestMapping("/resgiter")
		public ModelAndView resgiter(User user){
			ModelAndView modelAndView =new ModelAndView();
			userService.resgiter(user);
			modelAndView.setViewName("../../index");
		return modelAndView;
		}
}


