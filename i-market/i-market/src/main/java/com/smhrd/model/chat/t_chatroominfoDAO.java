package com.smhrd.model.chat;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class t_chatroominfoDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	// 파일 업로드
	public int createChat(t_chatroominfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.insert("com.smhrd.database.ChatMapper.createChat", dto);
		
		
		
		return cnt;
	}
	
	public t_chatroominfoDTO selectRoom(t_chatroominfoDTO dto) {
		t_chatroominfoDTO chatRoom;
		
		chatRoom = sqlSession.selectOne("com.smhrd.database.ChatMapper.chatRoomIdx", dto);

		
		return chatRoom;
	}
	
	// 게시글 조회
	public List<t_chatroominfoDTO> showChatRoom(t_chatroominfoDTO user_id){
		List<t_chatroominfoDTO> chat_list = sqlSession.selectList("com.smhrd.database.ChatMapper.showChatRoom", user_id);
		System.out.println("챗리스트" + chat_list);
		sqlSession.close();
		
		return chat_list;
	}
}
