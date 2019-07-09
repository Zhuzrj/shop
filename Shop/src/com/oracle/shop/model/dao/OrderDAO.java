package com.oracle.shop.model.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderDAO {

	@Insert("insert into orders(ordertime,orderstate,orderaddress,something,userid,name) values(#{times},#{orderstate},#{orderaddress},#{something},#{userid},#{name})")
	public int addOrder(@Param("userid")int userid,@Param("name")String name,@Param("orderaddress")String orderaddress,@Param("something")String something,@Param("orderstate")String orderstate,@Param("times")String times);
}
