package com.smhrd.model.chat;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class t_chattinginfoDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public List<t_chattinginfoDTO> showChatRoom(t_chattinginfoDTO croom_idx){
		List<t_chattinginfoDTO> chat_list = sqlSession.selectList("com.smhrd.database.ChatMapper.showChat", croom_idx);
		System.out.println("채팅내부리스트" + chat_list);
		sqlSession.close();
		
		return chat_list;
	}
	
	public int sendChat(t_chattinginfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.insert("com.smhrd.database.ChatMapper.sendChat", dto);
		
		sqlSession.close();
		
		return cnt;
	}
	
	public int createChat(t_chattinginfoDTO dto) {
		
		int cnt = 0;
			
			cnt = sqlSession.insert("com.smhrd.database.ChatMapper.chatUpload", dto);
		
			sqlSession.close();
		
			return cnt;
	}
}
