package com.spring.ebook.model.user.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;

@Repository("userDao")
public class UserDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	public UserVO loginRow(UserVO user) {
		System.out.println("Dao loginRow");

		return session.selectOne("com.spring.acorn.mapper.user.login", user);
	}
	
	public ArrayList<PutlistVO>putlistRow() {
		System.out.println("Dao putlistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.user.putlist");
	}
	
	public ArrayList<ReadlistVO>readlistRow() {
		System.out.println("Dao readlistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.user.readlist");
	}
	
	public UserVO withdrawalRow(UserVO user) {
		System.out.println("Dao withdrawalRow");
		return session.selectOne("com.spring.acorn.mapper.user.withdrawal",user);
	}
}
