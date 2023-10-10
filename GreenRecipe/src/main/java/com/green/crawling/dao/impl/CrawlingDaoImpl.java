package com.green.crawling.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.crawling.dao.CrawlingDao;
import com.green.crawling.vo.CrawlingVo;

@Repository("crawlingDao")
public class CrawlingDaoImpl implements CrawlingDao {

	@Autowired	
	private  SqlSession   sqlSession;

	@Override
	public void insertCrawling(CrawlingVo vo) {
		
		sqlSession.insert("Crawling.InsertCrawling",vo);
		
	}
	
}