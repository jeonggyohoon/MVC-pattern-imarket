package com.main.model;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class itemBargainDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession(true);

	public int barUpload(itemBargainDTO dto) {
		int cnt = 0;
		cnt = sqlSession.insert("com.smhrd.database.hifiveMapper.barUpload", dto);
		sqlSession.close();
		return cnt;
	}
	public List<itemBargainDTO> showBargain(int item_idx) {
		List<itemBargainDTO> bar_list = sqlSession.selectList("com.smhrd.database.hifiveMapper.showBargain", item_idx);

		sqlSession.close();

		return bar_list;
	}
}
