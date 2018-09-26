package com.jlcindia.spring;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	@RequestMapping(value={"/hello.jlc"},method=RequestMethod.GET)
	public String  showHelloPage(){
		System.out.println("**showHelloPage");
		return "hello";
	}
	
	@RequestMapping(value="/admin.jlc",method=RequestMethod.GET)
	public  String  showAdminPage(){
		System.out.println("**showAdminPage");
		return "admin";
	}

	
	@RequestMapping(value="/emp.jlc",method=RequestMethod.GET)
	public String showEmployeePage(){
		System.out.println();
		return "employee";
	}
	
	@RequestMapping(value="/login",method={RequestMethod.GET,RequestMethod.POST})
	public String  login(){
		return "login";
	}
}
