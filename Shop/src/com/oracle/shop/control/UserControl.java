package com.oracle.shop.control;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.UserDAO;
import com.oracle.shop.model.javabean.Users;

@Controller
@RequestMapping("/user")
public class UserControl {
	
	@Autowired
	private UserDAO dao;

	@RequestMapping("/login")
	public String login(String username,String password,HttpSession  session) {
		System.out.println("user -login");
		
		//1.��ȡ�û��ڱ�����д���˻�����
		System.out.println(username+"\t"+password);
		
		//2.��ѯ���ݿ��Ƿ���������Ӧ���˻�������
		Users  u=dao.login(username, password);
		
		System.out.println(u);
		
		//3.�жϣ������������ת����ҳ���������ص���¼
		if(u==null){
			System.out.println("login fail");
			return "login";
		}else{
			System.out.println("login success");
			//Ӧ�ý���¼�ɹ����û����ϴ洢��session������ҳ����Է��ʵ�½����û���Ϣ
			session.setAttribute("logineduser", u);
			return "index";
		}
		
	}

	@RequestMapping("/register")
	public String register(String username,String password,String nickname) {
		System.out.println("user -register");
		//1.�Ȼ�ȡ�û��ڱ�ҳ������д��Ҫע����û���Ϣ
		
		//2.����dao����ķ����������ע����û����ϲ��뵽���ݿ����
		int result=dao.addUser(username, password, nickname);
		if(result>0){
			return "login";
		}else{
			return "register";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.setAttribute("logineduser", null);
		return "index";
	}
}
