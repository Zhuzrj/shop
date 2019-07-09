package com.oracle.shop.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.ProductDAO;
import com.oracle.shop.model.javabean.Goods;


@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductDAO dao;
	
	@RequestMapping("/list")
	public String listProduct(Model m){
		System.out.println("进入后台的方法");
		List<Goods> gs=dao.listGoods();
		for(Goods g:gs){
			System.out.println(g);
		}
		m.addAttribute("gs", gs);
		return "index";
	}
}
