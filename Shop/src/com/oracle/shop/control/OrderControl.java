package com.oracle.shop.control;

import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.OrderDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Orderdetails;
import com.oracle.shop.model.javabean.Orders;
import com.oracle.shop.model.javabean.Users;

@Controller
@RequestMapping("/order")
public class OrderControl {
	@Autowired
	private OrderDAO dao;

	@RequestMapping("/add")
	public  String addOrder(int[] pid,int[] count,String name,String orderaddress,String something,HttpSession session){
		//1.获取提交订单页面上的各种参数（购买的商品编号和对应的数量，收货人的信息和备注）
		System.out.println(Arrays.toString(pid));
		System.out.println(Arrays.toString(count));
		String orderNum=UUID.randomUUID().toString();//随机生成一个订单编号
		//调用dao方法，往订单表中插入订单数据
		int result=dao.addOrder(orderNum,((Users)session.getAttribute("logineduser")).getUserid(), name, orderaddress, something, "已付款", new Date().toLocaleString());
		//往订单详情表中插入订单详情数据
		for(int n=0;n<pid.length;n++){
			int result1=dao.addOrderItem(orderNum, pid[n], count[n]);
		}
		System.out.println(result>0?"订单提成功":"提交失败");
		return "redirect:list";
	}
	
	@RequestMapping("/list")
	public String list(HttpSession session,Model m){
		if(session.getAttribute("logineduser")==null){
			//如果未登陆，跳转到登录页面
			return "login";
		}else{
			//如果登陆了，则查询数据库将订单详情查询好封装到一个map集合中
			Map<Orders, Map<Goods, Integer>> orderDtails= new HashMap();
			
			 List<Orders>  orders=dao.listOrders(((Users)session.getAttribute("logineduser")).getUserid());
			 
			for(Orders  o:orders){
				List<Orderdetails> items=dao.listOrderdetailsByOrderId(o.getOrderid());
				Map<Goods, Integer> itemDetails=new HashMap();
				for(Orderdetails  i:items){
					Goods g=dao.getGoodsByGoodsid(i.getGoodsid());
					itemDetails.put(g, i.getOrderdetailsgoodsnumber());
				}
				orderDtails.put(o, itemDetails);
			}
			m.addAttribute("orderDetail", orderDtails);
			return "orders";
		}
	}
}
