package com.example.controller;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.FestivalVO;
import com.example.service.FestivalService;
import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvException;



@Controller
@RequestMapping("/smart")
public class SmartPageController {
	
	@Autowired
	private FestivalService festivalService;
	
	//DB 안 거치고 화면만 띄우는 것들 >> 매번매번 MAPPING 하지 않고 여기 거치도록
    @RequestMapping(value = "/{url}")
    public String moving(@PathVariable String url) {
	    System.out.println("경로:" + url);
	     return "smart/"+url;
    }
    
    /* 스마트 페이지 이동 */
	@RequestMapping("/smart-page")
    public String smartPage(HttpServletRequest request,HttpSession session){
		System.out.println("** controller : smart-page");
		String u_id = (String) session.getAttribute("u_id");  //session 값 저장
    	/* 가장 많이 나온 태그 */
    	if (u_id != null) { 			
        	List<FestivalVO> rList = festivalService.getResultList(u_id);
				//System.out.println(">>>> rList : "+rList);
        		if (rList != null && !rList.isEmpty()) {
        			String temp1 = "";
                	for(FestivalVO vo : rList) {
                		temp1 += vo.getR_fetv_tag() + ",";
                	}
                	
                	// String[]객체를 List<String> 객체로 변환 후 ArrayList<String> 객체로 변환
                	List<String> temp2 = Arrays.asList(temp1.split(","));
                	ArrayList<String> tag_list = new ArrayList<String>();
                	tag_list.addAll(temp2);
                	
                	// 태그별 개수 세기
                	HashMap<String, String> res = new HashMap<String, String>();
                	for(String t : tag_list) {
                		String frequency = Integer.toString(Collections.frequency(tag_list, t));
                		res.put(t, frequency);
                	}
                	
                	List<String> keySetList = new ArrayList<>(res.keySet());
            		// Value 값으로 내림차순 정렬
            		Collections.sort(keySetList, (k1, k2) -> (res.get(k2).compareTo(res.get(k1))));
            		
            		// top 3 만 나타냄
            		List<String> newKeySetList = new ArrayList<>(keySetList.subList(0,3));
            		
            		HashMap<String,String> result = new HashMap<String, String>();
            		for(String key : newKeySetList) {
            			//System.out.println("key : " + key + " / " + "value : " + res.get(key));
            			String count = res.get(key);
            			key = key.substring(1);
            			result.put(key, count);
            		}
            		//System.out.println(">>> result : "+result);
            		request.setAttribute("tags", result);
        		}
    	}
    	
		/* 추천 결과 */
		// 추천 알고리즘 결과 받아오기 (Python(server) - java(client) socket 통신)
		// 소켓을 선언한다.
		try (Socket client = new Socket()) {
			// 소켓에 접속하기 위한 접속 정보를 선언한다. (localhost, port 번호 9999)
			InetSocketAddress ipep = new InetSocketAddress("192.168.0.35", 9999);
			// 소켓 접속!
			client.connect(ipep);
				
			// 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다. : 데이터 주고받는 곳
			try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
					
				String msg = "recomm,"+u_id;
				// string을 byte배열 형식으로 변환한다.
				byte[] data = msg.getBytes();
				// ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
				ByteBuffer b = ByteBuffer.allocate(4);
				// byte포멧은 little 엔디언이다.
				b.order(ByteOrder.LITTLE_ENDIAN);
				b.putInt(data.length);
				// 데이터 길이 전송
				sender.write(b.array(), 0, 4);
				// 데이터 전송
				sender.write(data);
					
				data = new byte[100000];
				// 데이터 길이를 받는다.
				receiver.read(data, 0, 100000);
				// ByteBuffer를 통해 little 엔디언 형식으로 데이터 길이를 구한다.
				ByteBuffer b2 = ByteBuffer.wrap(data);
				b2.order(ByteOrder.LITTLE_ENDIAN);
				int length = b2.getInt();
				
				// 데이터를 받을 버퍼를 선언한다.
				data = new byte[length];
				
				// 데이터를 받는다.
				receiver.read(data, 0, length);
					
				// byte형식의 데이터를 string형식으로 변환한다.
				msg = new String(data, "UTF-8");
				// 콘솔에 출력한다.
				String[] temp = msg.split(",");
				ArrayList<FestivalVO> vList = new ArrayList<FestivalVO>();
				int vonum = 0;
				for (String t : temp) {
					FestivalVO vo2 = festivalService.getRecommResult(t);
					//System.out.println(">>> vo2 :: "+vo2.getFetv_name());
					vList.add(vo2);
					vonum++;
				}//end of for
				request.setAttribute("vList", vList);
			}//end of try2
		} catch (Throwable e) {
			e.printStackTrace();
		}//end of try-catch1
			
		return "/smart/smart-page";
    }

	/* 혼잡도 -- 광역 별 방문자 수 */
	@ResponseBody
	@RequestMapping(value="/visitor", method=RequestMethod.GET)
	public List<String[]> congestion1(HttpServletRequest request) throws IOException, CsvException  {
		
		// 각자 환경에 맞게 local 경로 수정
		CSVReader csvReader = new CSVReader(new FileReader("D:/springbootFinal/Feidear/src/main/resources/static/csv/광역별_방문자_수.csv"));
		List<String[]> lines = csvReader.readAll();
		return lines;
	}

	/* 혼잡도 -- 방문자 수 추이 */
	@ResponseBody
	@RequestMapping(value="/visitorProgress", method=RequestMethod.GET)
	public List<String[]> congestion2(HttpServletRequest request) throws IOException, CsvException  {
		// 각자 환경에 맞게 local 경로 수정
		CSVReader csvReader = new CSVReader(new FileReader("D:/springbootFinal/Feidear/src/main/resources/static/csv/방문자_수_추이.csv"));
	    List<String[]> lines = csvReader.readAll();
	    //System.out.println(lines);
	    //lines.forEach(line -> System.out.println(String.join(",", line)));
		return lines;
	}

	/* 웹소켓 통신 메소드 : 날씨 정보를 받아서 정보 반환함 (파일주소가 아닌 데이터를 반환) */
	@ResponseBody
	@RequestMapping(value="/weather", method=RequestMethod.GET)
	public String weather(Integer idx) {
		System.out.println("** controller : weather");
		
		//실시간 날씨 API 받아오기 (Python(server) - java(client) socket 통신)
		// 소켓을 선언한다.
		try (Socket client = new Socket()) {
			// 소켓에 접속하기 위한 접속 정보를 선언한다. (localhost, port 번호 9999)
			InetSocketAddress ipep = new InetSocketAddress("192.168.0.35", 9999);
			// 소켓 접속!
			client.connect(ipep);
			
			// 소켓이 접속이 완료되면 inputstream과 outputstream을 받는다. : 데이터 주고받는 곳
			try (OutputStream sender = client.getOutputStream(); InputStream receiver = client.getInputStream();) {
				
				String msg = "weather,"+Integer.toString(idx); 
				// string을 byte배열 형식으로 변환한다.
				byte[] data = msg.getBytes();
				// ByteBuffer를 통해 데이터 길이를 byte형식으로 변환한다.
				ByteBuffer b = ByteBuffer.allocate(4);
				// byte포멧은 little 엔디언이다.
				b.order(ByteOrder.LITTLE_ENDIAN);
				b.putInt(data.length);
				// 데이터 길이 전송
				sender.write(b.array(), 0, 4);
				// 데이터 전송
				sender.write(data);
				
				/* 여기서 오류 !!!!!!!!!!!!!!!!! */
				data = new byte[100000];
				// 데이터 길이를 받는다.
				receiver.read(data, 0, 100000);
				// ByteBuffer를 통해 little 엔디언 형식으로 데이터 길이를 구한다.
				ByteBuffer b2 = ByteBuffer.wrap(data);
				b2.order(ByteOrder.LITTLE_ENDIAN);
				int length = b2.getInt();
				
				// 데이터를 받을 버퍼를 선언한다.
				data = new byte[length];
				
				// 데이터를 받는다.
				receiver.read(data, 0, length);

				// byte형식의 데이터를 string형식으로 변환한다.
				msg = new String(data, "UTF-8");
				// 콘솔에 출력한다.
				System.out.println(">> 날씨 출력 완료 : 페이지 확인");
				return msg;
			}
		} catch (Throwable e) {
			e.printStackTrace();
		}
		return null;
	}

	/* 추천 알고리즘 테스트 페이지 : 축제 정보 리스트업 */
	@RequestMapping("/fbti-test")
	public String getFstvList(Model m, HttpServletRequest request) {
		System.out.println("** controller : fbti-test");
		List<FestivalVO> list;
		try {
			list = festivalService.getRecommList(); //축제 정보를 받아옴 (랜덤으로 30개 추출)
			request.setAttribute("fList", list); //view에 결과 보냄.
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/smart/FBTI-test";
	}
	
	/* 테스트 결과 저장 */
	@PostMapping("/insertTest")
	public String insertTest(HttpServletRequest request,HttpSession session, @RequestParam(value="fetv_no", required=true) List<Integer> fetv_no, @RequestParam(value="r_fetv_est", required=true) List r_fetv_est) throws IOException {
		System.out.println("** controller : insertTest");
		String u_id = (String) session.getAttribute("u_id");  //session 값 저장
		//검사한 적 있는지 확인
		List<String> isRes = festivalService.getResult(u_id);
		if (isRes != null) { //검사한 적이 있을 경우 이전 기록 삭제		
			festivalService.deleteTest(u_id); 	
		}
			
		int idx = 0;
		for(Integer num : fetv_no) {
			//받은 축제 번호로 축제 태그, 축제 이름을 VO에 저장함.
			FestivalVO vo = festivalService.getTags(num);
				
			//HashMap 형태로 사용자 아이디, 축제 이름, 축제 태그 입력
			HashMap<String,String> res = new HashMap<String,String>();
			res.put("u_id", u_id);
			res.put("fetv_name",vo.getFetv_name());
			res.put("fetv_tags",vo.getFetv_tag());
			res.put("r_fetv_est", (String) r_fetv_est.get(idx));
			idx ++;
			// DB에 테스트 내역 저장
			festivalService.insertTest(res); 					
		}//end of for
		return "redirect:/smart/smart-page?cont=recomm";
	}
	
}

