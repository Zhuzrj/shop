package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;

/**
 * ����ǻ���mybatis�����д��productģ��dao��ڣ�����д��һ����������ѯ������Ʒ��Ϣ����
 * @author Administrator
 *
 */
@Mapper
public interface ProductDAO {

	@Select("select *  from goods limit #{startindex},#{count}")
	public List<Goods> listGoods(@Param("startindex")int startIndex,@Param("count")int count);
	
	/**
	 * ��ѯͳ����Ʒ����������dao����
	 * @return
	 */
	@Select("select count(*) from goods")
	public int getAllCountOfGoods();
	
}
