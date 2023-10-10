package com.green.crawling.service.impl;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.crawling.dao.CrawlingDao;
import com.green.crawling.service.CrawlingService;
import com.green.crawling.vo.CrawlingVo;


@Service("crawlingService")
public class CrawlingServiceImpl implements CrawlingService {

	@Autowired
	private CrawlingDao crawlingDao;
	

	@Override
	public void insertMenu(CrawlingVo vo) {		
		// 크롤링한 데이터 저장
		crawlingDao.insertCrawling(vo);
	}

	  @Override
	  public CrawlingVo crawlAndDownload(String url) {

	        try {
	            Document doc = Jsoup.connect(url).get(); // 웹 페이지를 가져옵니다.
	            // 웹 페이지의 모든 <meta> 태그를 가져옵니다.
	            Elements metaTags = doc.getElementsByTag("meta");
	            // 원하는 메타 데이터 속성을 가진 <meta> 태그를 찾습니다.
	            String cont = null;
	            String text = null;

	            Elements h3Elements = doc.select("h3");
	            String title = h3Elements.first().text();

	            for (Element metaTag : metaTags) {
	                String name = metaTag.attr("name");
	                if ("twitter:description".equals(name)) {
	                    cont = metaTag.attr("content");
	                    break; // 원하는 메타 데이터를 찾았으므로 루프를 종료합니다.
	                }
	            }

	            Elements ingredients = doc.select("a[href^=\"javascript:viewMaterial\"]");

	            // 모든 재료 정보를 한 줄로 출력합니다.
	            StringBuilder ingredientList = new StringBuilder();
	            for (Element ingredient : ingredients) {
	                text = ingredient.text();
	                ingredientList.append(text).append(" ");
	            }

	            // 이미지를 다운로드할 img 태그의 id를 지정합니다.
	            String targetImageId = "main_thumbs"; // 여기에 원하는 이미지의 id를 넣으세요.
	            // 이미지 태그를 선택합니다.
	            Element imageElement = doc.getElementById(targetImageId);

	            String imageUrl = null; // 이미지 URL을 저장할 변수 추가
	            if (imageElement != null) {
	                // 이미지의 src 속성을 가져옵니다.
	                imageUrl = imageElement.attr("src");

	                // 이미지 다운로드를 위한 경로 설정
	                String downloadPath = "D:\\dev\\imgs"; // 원하는 다운로드 경로
	                String imageName = getNextAvailableFileName(downloadPath);
	                String destinationPath = downloadPath + "\\" + imageName;

	                // 이미지 다운로드 함수 호출
	                downloadImage(imageUrl, destinationPath);
	            } else {
	                System.out.println("해당 ID를 가진 이미지를 찾을 수 없습니다.");
	            }

	            CrawlingVo vo = new CrawlingVo();
	            vo.setTitle(title);
	            vo.setIngredients(ingredientList.toString().trim());
	            vo.setCont(cont);
	            vo.setImageUrl(imageUrl); // 이미지 URL 설정

	            crawlingDao.insertCrawling(vo);
	            return vo; // 크롤링 결과를 반환합니다.

	        } catch (IOException e) {
	            e.printStackTrace();
	            return null;
	        }
	    }

	 public static String getNextAvailableFileName(String directory) {
        int index = 1;
        String baseFileName = "image";
        String extension = "png"; // 파일 확장자

        while (true) {
            String fileName = baseFileName + index + "." + extension;
            File file = new File(directory, fileName);
            if (!file.exists()) {
                return fileName;
            }
            index++;
        }
    }

	  public static void downloadImage(String imageUrl, String destinationPath) throws IOException {
	        URL url = new URL(imageUrl);
	        URLConnection conn = url.openConnection();

	        try (InputStream in = new BufferedInputStream(conn.getInputStream());
	             FileOutputStream out = new FileOutputStream(destinationPath)) {

	            byte[] buffer = new byte[1024];
	            int bytesRead;
	            while ((bytesRead = in.read(buffer)) != -1) {
	                out.write(buffer, 0, bytesRead);
	            }
	        }

	        System.out.println("이미지 다운로드 완료: " + destinationPath);
	    }
}
