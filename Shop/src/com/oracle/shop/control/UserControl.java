package com.oracle.shop.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserControl {

	@RequestMapping("/login")
	public String login(){
		System.out.println("�����¼");
		return "index";
	}
	@RequestMapping("/register")
	public String register(){
		System.out.println("����ע��");
		return "index";
	}
}
