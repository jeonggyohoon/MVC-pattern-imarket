package com.smhrd.model.user;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class t_userinfoDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public int insertUser(t_userinfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.insert("com.smhrd.database.UserMapper.insertUser", dto);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public t_userinfoDTO selectUser(t_userinfoDTO dto) {
		
		t_userinfoDTO user = null;
		
		user = sqlSession.selectOne("com.smhrd.database.UserMapper.selectUser", dto);
		
		sqlSession.close();
		
		return user;
	}
	
	public int updateUser(t_userinfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.update("com.smhrd.database.UserMapper.updateUser", dto);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public List<t_userinfoDTO> selectAllUser(){
	    List<t_userinfoDTO> list = sqlSession.selectList("com.smhrd.database.UserMapper.selectAllUser");
	      
	    sqlSession.close();
	      
	    return list;
	   }
	
	public int deleteUser(String user_id) {
		
		int cnt = 0;
		
		cnt = sqlSession.delete("com.smhrd.database.UserMapper.deleteUser", user_id);
		
		sqlSession.close();
		
		return cnt;
	}
}
