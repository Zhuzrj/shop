package com.oracle.shop.model.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Goods;
import com.oracle.shop.model.javabean.Shopcar;

import org.apache.ibatis.annotations.Delete;
/**
 * ���ﳵ��dao��
 * @author Administrator
 *
 */
@Mapper
public interface CarDAO {

	@Insert("insert into shopcar(number,userid,goodsid) values(1,#{userid},#{productid})")
	public int addProduct(@Param("userid")int userid,@Param("productid")int productid);
	
	@Select("select *  from shopcar where userid=#{0}")
	public List<Shopcar> listCartsByUserId(int userid);
	
	
	@Select("select * from goods where goodsid=#{0}")
	public  Goods  getGoodsByGoodsId(int goodsid);
	
	/**
	 * �ӹ��ﳵ����ɾ����Ʒ��dao����
	 */
	@Delete("delete from shopcar where goodsid=#{productid} and userid=#{userid}")
	public int deleteGoodsFromShopcar(@Param("userid")int userid,@Param("productid")int productid);
}
