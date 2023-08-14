package com.lakshithastores.lakshithastores.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lakshithastores.lakshithastores.entity.User;
import com.lakshithastores.lakshithastores.service.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService userService;

//	@RequestMapping("/")
//	public String lginPage() {
//		return "Login";
//	}

	@PostMapping("/login")
	public String loginDetals(@RequestParam String username, @RequestParam String password,
			HttpServletRequest request, Model model) {
		User user = userService.findByUserd(username);
		if (user == null || user.getPassword().length() == 0) {
			String res = "Username is not Valid. Please Try Again!!";
			model.addAttribute("error", res);
			return "Login";
		} else {
			BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

			if (bCryptPasswordEncoder.matches(password, user.getPassword())) {
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("password", user.getDesignation());
				return "redirect:/";
			} else {
				model.addAttribute("error", "Password is Invalid. Please Try Again!!");
				return "Login";
			}
		}
	}
}
