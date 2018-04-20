package com.CampusQuotient.liveDemo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.CampusQuotient.liveDemo.EntityClass.LoginPOJO;
import com.CampusQuotient.liveDemo.Repository.OrganizationRepo;

@Controller
public class LoginRegController {
	@Autowired
	private OrganizationRepo orepo;
	//for the main page view
	@ResponseBody
	@GetMapping("/")
	public ModelAndView mainPage() {
		return new ModelAndView("MainPage");
		}
	//To move the control to registeration page
	@GetMapping(value="/main", params="registeration")
	public ModelAndView register() {
		return new ModelAndView("Registeration");
	}
	//to perform the registeration operations
	@PostMapping("/save")
	public ModelAndView Register(@RequestParam("name")String name, @RequestParam("username")String username,
								@RequestParam("password")String password,@RequestParam("confirm")String confirm,
								@RequestParam("email")String email,@ModelAttribute("lrpojo")LoginPOJO lrpojo) {
		lrpojo.setConfirm(confirm);
		lrpojo.setEmail(email);
		lrpojo.setPassword(password);
		lrpojo.setUsername(username);
		lrpojo.setName(name);
		orepo.save(lrpojo);
		return new ModelAndView("sucessReg");
	}
	//sucess for registeration page
	@RequestMapping(value="/sucess",params="showdata")
	public ModelAndView showsucess() {
		return new ModelAndView("Login");
	}
	//open login page
	@GetMapping(value="/main", params="login")
	public ModelAndView login() {
		return new ModelAndView("Login");
	}
	//open Student Registeraion page
	@GetMapping(value="/main", params="studentreg")
	public ModelAndView stureg() {
		return new ModelAndView("StudentRegisteration");
	}
	@GetMapping(value="/login",params="reg")
	public ModelAndView regis() {
		return new ModelAndView("Registeration");
	}
	@PostMapping(value="/login")
	public ModelAndView findByUsernameandPassword(@RequestParam("username")String loginusername,
													@RequestParam("password")String loginpassword) {
		LoginPOJO uname=orepo.findByUsername(loginusername);
		LoginPOJO pass= orepo.findByPassword(loginpassword);
		if(uname!= null&& pass!=null) {
			return new ModelAndView("welcome");
		}
		return new ModelAndView("Incorrect");
		
	}
	@GetMapping(value="/incorrect",params="inc")
	public ModelAndView incorrect() {
		return new ModelAndView("Login");
	}
	
}
