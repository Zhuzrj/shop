package com.oracle.shop.model.dao;


import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Orderdetails;
import com.oracle.shop.model.javabean.Orders;

@Mapper
public interface OrderDAO {

	@Insert("insert into orders(orderid,ordertime,orderstate,orderaddress,something,userid,name) values(#{orderid},#{ordertime},#{orderstate},#{orderaddress},#{something},#{userid},#{name})")
	public int addOrder(@Param("orderid") String orderid,@Param("userid") int userid,
			@Param("name") String name, @Param("orderaddress") String orderaddress,
			@Param("something") String something, @Param("orderstate") String orderstatus,
			@Param("ordertime") String ordertime);
	
	@Insert("insert into orderdetails(orderdetailsgoodsnumber,goodsid,orderid) values(#{orderdetailsgoodsnumber},#{goodsid},#{orderid})")
	public int addOrderItem(@Param("orderid")String orderid,@Param("goodsid")int goodsid,@Param("orderdetailsgoodsnumber")int orderdetailsgoodsnumber);
	
	
	@Select("select * from  orders where userid=#{0}")
	public List<Orders> listOrders(int userid);
	
	@Select("select *  from orderdetails where orderid=#{0}")
	public List<Orderdetails>  listOrderdetailsByOrderId(String orderid);
	
	@Select("select * from goods where goodsid=#{0}")
	public Goods getGoodsByGoodsid(int goodsid);
}