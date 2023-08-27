package com.smhrd.model.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CommentInfoDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public int CommentUpLoad(CommentInfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.insert("com.smhrd.database.BoardInfoMapper.CommentUpLoad", dto);
		
		return cnt;
	}
	
	public List<CommentInfoDTO> showComment(CommentInfoDTO cdto){
		
		List<CommentInfoDTO> comment_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showComment", cdto);
		
		sqlSession.close();
		
		return comment_list;
	}
	
	public List<CommentInfoDTO> showUpdateComment(CommentInfoDTO dto){
		
		List<CommentInfoDTO> comment_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showUpdateComment",dto);
		
		sqlSession.close();
		
		return comment_list;
	}
	
	public int commentUpdate(CommentInfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.update("com.smhrd.database.BoardInfoMapper.CommentUpdate", dto);
		
		return cnt;
	}
	
	public int commentDelete(CommentInfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.delete("com.smhrd.database.BoardInfoMapper.CommentDelete", dto);
		
		return cnt;
	}
}
