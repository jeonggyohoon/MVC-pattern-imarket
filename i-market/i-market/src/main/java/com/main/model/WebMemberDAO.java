package com.main.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class WebMemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int insertMember(WebMemberDTO dto) {
		int cnt = 0;

		cnt = sqlSession.insert("com.smhrd.database.WebMemberMapper.insertMember", dto);

		sqlSession.close();

		return cnt;
	}
	
	public WebMemberDTO selectMember(WebMemberDTO dto) {
		//sqlSession = sqlSessionFactory.openSession(true);
		WebMemberDTO member = null;
		
		member = sqlSession.selectOne("com.smhrd.database.WebMemberMapper.selectMember", dto);

		sqlSession.close();
		
		return member;
	}
	
	public int updateMember(WebMemberDTO dto) {
		int cnt = 0;
		cnt = sqlSession.update("com.smhrd.database.WebMemberMapper.updateMember", dto);
		
		sqlSession.close();
		return cnt;
	}
	
	public List<WebMemberDTO> selectAllMember() {
		List<WebMemberDTO> list = sqlSession.selectList("com.smhrd.database.WebMemberMapper.selectAllMember");
		
		sqlSession.close();
		
		return list;
	}
	
	public int deleteMember(String user_id) {
		int cnt = 0;
		cnt = sqlSession.delete("com.smhrd.database.WebMemberMapper.deleteMember", user_id);
		
		sqlSession.close();
		return cnt;
	}
	
	public WebMemberDTO selectMeMember(WebMemberDTO dto) {
		WebMemberDTO member = null;
		
		member = sqlSession.selectOne("com.smhrd.database.WebMemberMapper.selectMeMember", dto);

		sqlSession.close();
		
		return member;
	}
}
