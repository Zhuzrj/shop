package com.oracle.shop.model.dao;

import java.util.UUID;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderDAO {

	String orderNum=UUID.randomUUID().toString();
	@Insert("insert into orders(orderid,ordertime,orderstate,orderaddress,something,userid,name) values(#{orderid},#{times},#{orderstate},#{orderaddress},#{something},#{userid},#{name})")
	public int addOrder(@Param("orderid") String orderid,@Param("userid")int userid,@Param("name")String name,@Param("orderaddress")String orderaddress,@Param("something")String something,@Param("orderstate")String orderstate,@Param("times")String times);

	@Insert("insert into orderdetails(orderdetailsgoodsnumber,goodsid,orderid) values(#{orderdetailsgoodsnumber},#{goodsid},#{orderid})")
	public int addOrderItem(@Param("orderid")String orderid,@Param("goodsid")int goodsid,@Param("orderdetailsgoodsnumber")int orderdetailsgoodsnumber);
}
