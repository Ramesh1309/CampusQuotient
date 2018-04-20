package com.CampusQuotient.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.CampusQuotient.POJO.LoginRegisterationEntity;
import com.CampusQuotient.repo.Repository;

@Controller
public class LoginRegisterationController {
	@Autowired
	private Repository repo;
@ResponseBody
@RequestMapping("/store")
	public ModelAndView Registerd(@ModelAttribute("loginreg")LoginRegisterationEntity loginreg, @RequestParam("Name")String name,@RequestParam("Username")String username,@RequestParam("Email")String email, @RequestParam("Password")String password,@RequestParam("Repassword")String repas) {
	loginreg.setName(name);
	loginreg.setEmail(email);
	loginreg.setUsername(username);
	loginreg.setPassword(password);
	loginreg.setRepassword(repas);
	repo.save(loginreg);
	return new ModelAndView("Login");
	}
}