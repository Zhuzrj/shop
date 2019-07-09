package com.oracle.shop.control;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.shop.model.dao.CarDAO;
import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Shopcar;
import com.oracle.shop.model.javabean.Users;
/**
 * ���ﳵģ��ĺ�̨control
 * @author Administrator
 *
 */

@Controller
@RequestMapping("/car")
public class CarControl {
	
	@RequestMapping("/delete")
	public String deleteProductFormShopcar(int pid,HttpSession session){
		//1.��ȡ�û�����ҳ��Ҫɾ������Ʒid
		//2.����dao���������id����Ʒ�ӹ��ﳵ����ɾ��
		//��session�л�ȡ��¼���û����
		int userid=((Users)session.getAttribute("logineduser")).getUserid();
		System.out.println("ɾ�����ﳵ�ķ���");
		int result=dao.deleteGoodsFromShopcar(userid, pid);
		System.out.println(result>0?"ɾ���ɹ�":"ɾ��ʧ��");
		return "redirect:list";
	}
	
	@Autowired
	private CarDAO dao;

	@RequestMapping("/add")
	public String addProductToCar(int pid,HttpSession session){
		//�ж��Ƿ��¼��û�е�¼��ֱ����ת����¼ҳ��
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
	
			//��session�л�ȡ��¼���û����
			int userid=((Users)session.getAttribute("logineduser")).getUserid();
			
			//����dao��������ǰ��Ʒ��ӵ����ﳵ����
			
			/****
			 * �����֮ǰ�Ȳ�ѯ���û��Ĺ��ﳵ�������Ƿ��������Ʒ��
			 * �����Ӧ�ò鴦֮ǰ����������������1Ȼ���޸ĵ����ﳵ��
			 * ���û�У���ֱ��ִ����ӵ����ﳵ��
			 * 
			 * ???
			 */
			
			int result=dao.addProduct(userid, pid);
			System.out.println(result>0?"��ӳɹ�":"���ʧ��");
			
			
		return "redirect:list";
		}
	}
	/**
	 * ���ǲ�ѯ�û��µĶ��й��ﳵ��Ʒ��Ϣ�ķ���
	 * @param session
	 * @param m
	 * @return
	 */
	@RequestMapping("/list")
	public String listCars(HttpSession session,Model  m){
		System.out.println("list cars");
		
		if(session.getAttribute("logineduser")==null){
			return "login";
		}else{
	
		//��session�л�ȡ��¼���û����
		int userid=((Users)session.getAttribute("logineduser")).getUserid();
		Map<Goods, Integer> detailCars=new HashMap<>();
		
		
		List<Shopcar> sc=dao.listCartsByUserId(userid);
		
		for(Shopcar s:sc){
			detailCars.put(dao.getGoodsByGoodsId(s.getGoodsid()), s.getNumber());
		}
		m.addAttribute("sc", detailCars);
		return "cart";
		}
	}
}





