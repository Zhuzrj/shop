package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.*;


@Mapper
public interface ProductDAO {

	@Select("select * from goods")
	public List<Goods> listGoods();
}
