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
		//1.获取提交订单页面上的各种参数（购买的商品编号和对应的数量，收货人的信息和备注）
		System.out.println(Arrays.toString(pid));
		System.out.println(Arrays.toString(count));
		System.out.println(username);
		System.out.println(orderaddress);
		System.out.println(something);
		int result=dao.addOrder(((Users)session.getAttribute("logineduser")).getUserid(), username, orderaddress, something, "已付款", new Date().toLocaleString());
		System.out.println(result>0?"订单提成功":"提交失败");
		return "orders";
	}
}
