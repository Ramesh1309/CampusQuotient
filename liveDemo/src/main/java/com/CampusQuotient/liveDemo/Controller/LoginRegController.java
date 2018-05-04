package com.CampusQuotient.liveDemo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.CampusQuotient.liveDemo.EntityClass.LoginPOJO;
import com.CampusQuotient.liveDemo.EntityClass.StudentRegisteration;
import com.CampusQuotient.liveDemo.Repository.OrganizationRepo;
import com.CampusQuotient.liveDemo.Repository.StudentRepo;

@RestController
@RequestMapping("/")
public class LoginRegController {
	@Autowired
	private OrganizationRepo orepo;
	
	@Autowired
	private StudentRepo srepo;
	//for the main page view
	
	@RequestMapping(value="/", method = RequestMethod.POST)

	public @ResponseBody ModelAndView mainPage() {
		return new ModelAndView("MainPage");
		}
	// to open sign in / signup page
	@RequestMapping(value="/main",params="login",method =RequestMethod.POST)
	public  @ResponseBody ModelAndView OpenLogin() {
		return new ModelAndView("Login");
	}
	//to perform the registeration operations
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	
	public ModelAndView Register(@RequestParam("name")String name, @RequestParam("usernamesign")String username,
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
	
	@RequestMapping(value="/sucess",params="showdata",method=RequestMethod.POST)

	public ModelAndView showsucess() {
		return new ModelAndView("Login");
	}
	//open Student Registeraion page
	
	@RequestMapping(value="/main", params="studentreg",method=RequestMethod.POST)

	public ModelAndView stureg() {
		return new ModelAndView("StudentRegisteration");
	}
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	
	
	public ModelAndView findByUsernameandPassword(@RequestParam("username")String loginusername,
													@RequestParam("password")String loginpassword) {
		LoginPOJO uname=orepo.findByUsername(loginusername);
		LoginPOJO pass= orepo.findByPassword(loginpassword);
		if(uname!= null&& pass!=null) {
			
			return new ModelAndView("welcome");
			
		}
		return new ModelAndView("Incorrect");
		
	}
	
	@RequestMapping(value="/incorrect",params="inc",method=RequestMethod.POST)

	public ModelAndView incorrect() {
		return new ModelAndView("Login");
	}

	
	@RequestMapping(value="/studentreg",method=RequestMethod.POST)

	public ModelAndView Studentregisteration(@RequestParam("F_Name")String F_Name,
											@RequestParam("L_Name")String L_Name,@RequestParam("Email")String email,
											@RequestParam("Phn_Num")String Phn_Num,@RequestParam("Reg_Num")String Reg_Num
											,@RequestParam("University")String University,@RequestParam("College")String College,
											@RequestParam("Branch")String Branch,@RequestParam("YOP")int YOP,@ModelAttribute("studentreg")StudentRegisteration str,BindingResult brs ){
		
		str.setBranch(Branch);
		str.setEmail(email);
		str.setF_Name(F_Name);
		str.setL_Name(L_Name);
		str.setPhn_Num(Phn_Num);
		str.setReg_Num(Reg_Num);
		str.setUniversity(University);
		str.setYOP(YOP);
		srepo.save(str);
		return new ModelAndView("sucessReg");
	}
	
	@RequestMapping(value="/studentreg",params="joinus",method=RequestMethod.POST)
	@ResponseStatus(value=HttpStatus.OK)
	public ModelAndView Join() {
		return new ModelAndView("MainPage");
		
	}
	
	
	
}
