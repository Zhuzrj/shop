package com.oracle.shop.control;

import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.OrderDAO;
import com.oracle.shop.model.javabean.Users;

@Controller
@RequestMapping("/order")
public class OrderControl {
	@Autowired
	private OrderDAO dao;

	@RequestMapping("/add")
	public  String addOrder(int[] pid,int[] count,String username,String orderaddress,String something,HttpSession session){
		//1.��ȡ�ύ����ҳ���ϵĸ��ֲ������������Ʒ��źͶ�Ӧ���������ջ��˵���Ϣ�ͱ�ע��
		System.out.println(Arrays.toString(pid));
		System.out.println(Arrays.toString(count));
		System.out.println(username);
		System.out.println(orderaddress);
		System.out.println(something);
		int result=dao.addOrder(((Users)session.getAttribute("logineduser")).getUserid(), username, orderaddress, something, "�Ѹ���", new Date().toLocaleString());
		System.out.println(result>0?"������ɹ�":"�ύʧ��");
		return "orders";
	}
}
