package com.green.rest.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.green.pds.service.PdsService;

//  @RestController = @Controller + @ResponseBody
//  @ResponseBody 는 return값이 json, xml 과 같은 문자열가능
@RestController 
public class PdsRestController {
	//  /deleteFile?file_num=12&sfile=flower_1.jpg"
	
	@Autowired
	private  PdsService  pdsService;
	
	@RequestMapping(
			value   = "/deleteFile",
			method  = RequestMethod.GET,
			headers = "Accept=application/json")	
	public  void  deleteFile(
		@RequestParam  HashMap<String, Object> map ) {
		
		pdsService.deleteUploadFile( map );
		
	}
	
	@RequestMapping(value   = "/cookRecipe",
			method  = RequestMethod.GET,
			headers = "Accept=application/json")	
	public  void  cookReciepe(
		@RequestParam  HashMap<String, Object> map,
		HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String json = getCookRecipe( request, response);
		System.out.println( json );
		
	}
	
	private String getCookRecipe(HttpServletRequest request, HttpServletResponse response) throws IOException {
		StringBuilder urlBuilder = new StringBuilder("https://openapi.foodsafetykorea.go.kr/api/70e153f2e8f64995941b/COOKRCP01/json/1/50"); /*URL*/
        //urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=HPG%2FiUcz%2Ft%2FQ8HAFjrKL9sP2JYkLOIIgbnEzvj9enzRYy%2BjXWDidxABqUgD85CcU%2FUhqdtU2SPY%2Btq97nfbRxw%3D%3D"); /*Service Key*/
        //urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        //urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
        //urlBuilder.append("&" + URLEncoder.encode("resultType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*JSON방식으로 호출 시 파라미터 resultType=json 입력*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
        
        // 클라이언트로 전송
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();        
        out.print(sb.toString());
        out.flush();
        
        return sb.toString();
	}
	
	@RequestMapping(value   = "/foodInform",
			method  = RequestMethod.GET,
			headers = "Accept=application/json")	
	public  void  foodInform(
		@RequestParam  HashMap<String, Object> map,
		HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String json = getFoodInform( request, response );
		System.out.println( json );
		
	}
	
	private String getFoodInform(HttpServletRequest request, HttpServletResponse response) throws IOException {
		StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/1471000/FoodNtrIrdntInfoService1/getFoodNtrItdntList1"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=X5Ow2Q7%2F1YLN6F2IGV2I9%2F1G9A5aZ2eNuiJnwQvTm8m7w%2FDEh2jJsBMatEA%2FFBy2dM5%2FoJASYTxYqsoEukRzvQ%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("desc_kor","UTF-8") + "=" + URLEncoder.encode("바나나칩", "UTF-8")); /*식품이름*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("3", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("bgn_year","UTF-8") + "=" + URLEncoder.encode("2017", "UTF-8")); /*구축년도*/
        urlBuilder.append("&" + URLEncoder.encode("animal_plant","UTF-8") + "=" + URLEncoder.encode("(유)돌코리아", "UTF-8")); /*가공업체*/
        urlBuilder.append("&" + URLEncoder.encode("type","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*응답데이터 형식(xml/json) Default: xml*/
        URL url = new URL(urlBuilder.toString());
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());
    
        
        // 클라이언트로 전송
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();        
        out.print(sb.toString());
        out.flush();
        
        return sb.toString();
	}
}






