package com.smhrd.model.news;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class NewsInfoDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);
	
	public List<NewsInfoDTO> showNews(){
		
		List<NewsInfoDTO> news_list = sqlSession.selectList("com.smhrd.database.BoardInfoMapper.showNews");
		
		sqlSession.close();
		return news_list;
	}

}
