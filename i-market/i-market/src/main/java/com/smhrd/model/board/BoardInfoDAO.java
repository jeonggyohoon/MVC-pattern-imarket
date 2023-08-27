package com.smhrd.model.board;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardInfoDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public int BoardUpLoad(BoardInfoDTO dto) {
		
		int cnt = 0;
		
		cnt = sqlSession.insert("com.smhrd.database.BoardInfoMapper.BoardUpLoad", dto);
	
		return cnt;
	}
	
	public List<BoardInfoDTO> showBoard(){
		
		List<BoardInfoDTO> board_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showBoard");
	
		sqlSession.close();
		
		return board_list;
	
	}
	
	public List<BoardInfoDTO> showBoardTitle(BoardInfoDTO searchText){
		
		List<BoardInfoDTO> board_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showBoardTitle", searchText);
		
		sqlSession.close();
		
		return board_list;
		
	}
	
	public List<BoardInfoDTO> showBoardUser_id(BoardInfoDTO searchText){
		
		List<BoardInfoDTO> board_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showBoardUser_id", searchText);
		
		sqlSession.close();
		
		return board_list;
		
	}
	 public List<BoardInfoDTO> showBoardDtail(BoardInfoDTO b_idx) {
		
		 	List<BoardInfoDTO> dtail_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showBoardDetail", b_idx);
			
			sqlSession.close();
			
			return dtail_list;
	 }
	 
	 public int boardUpdate(BoardInfoDTO dto){

		 int cnt = 0;
		 
		 cnt = sqlSession.update("com.smhrd.database.BoardInfoMapper.BoardUpdate", dto);
		 
		 return cnt;
	 }
	 
	 public int boardView(BoardInfoDTO dto1) {
		 
		 int cnt = 0;
		 
		 cnt = sqlSession.insert("com.smhrd.database.BoardInfoMapper.BoardView", dto1);
		 
		 return cnt;
		 
	 }
	 
public int boardLike(BoardInfoDTO dto1) {
		 
		 int cnt = 0;
		 
		 cnt = sqlSession.insert("com.smhrd.database.BoardInfoMapper.BoardLike", dto1);
		 
		 return cnt;
		 
	 }
	 
public int comment_count(BoardInfoDTO bdto) {
	
	int cnt = 0;
	
	cnt = sqlSession.update("com.smhrd.database.BoardInfoMapper.CommentCn", bdto);
	
	return cnt;
	
}

	 public int boardDelete(BoardInfoDTO dto) {
		 
		 int cnt = 0;
		 
		 cnt = sqlSession.insert("com.smhrd.database.BoardInfoMapper.BoardDelete", dto);
		 
		 return cnt;
	 }
	 
	 public List<BoardInfoDTO> showBoardMain(){
			
			List<BoardInfoDTO> board_listMain = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showBoardMain");
		
			sqlSession.close();
			
			return board_listMain;
		
		}
}





























