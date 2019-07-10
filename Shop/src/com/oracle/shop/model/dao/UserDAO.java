package com.oracle.shop.model.dao;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.oracle.shop.model.javabean.Users;
/**
 * ��һ��userdao�ӿڣ��������û�ģ���ṩ���ݿ�����ķ���
 * @author Administrator
 *
 */

@Mapper
public interface UserDAO {
	/**
	 * ���Ǵ����û���¼��dao����
	 * @param username
	 * @param password
	 * @return
	 */
	@Select("select * from users where username=#{username} and password=#{password}")
	public Users login(@Param("username")String username,@Param("password")String password);

	@Insert("insert into users(username,password,nickname,picture) values(#{username},#{password},#{nickname},'images/yyp1.jpg')")
	public int addUser(@Param("username")String username,@Param("password")String password,@Param("nickname")String nickname);
}
