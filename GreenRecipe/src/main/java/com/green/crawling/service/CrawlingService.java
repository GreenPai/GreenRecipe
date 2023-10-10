package com.green.crawling.service;

import com.green.crawling.vo.CrawlingVo;

public interface CrawlingService {

	void insertMenu(CrawlingVo vo);

	CrawlingVo crawlAndDownload(String string);

}
