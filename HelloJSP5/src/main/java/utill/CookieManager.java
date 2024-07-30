package utill;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CookieManager {
	//쿠키 생성
	public static void makeCookie(HttpServletResponse response, String cName,String cValue,int cTime) {
		Cookie cookie =new Cookie(cName, cValue);	//쿠키 생성
		cookie.setPath("/");
		cookie.setMaxAge(cTime);	// 쿠키 유지 기간 설정
		response.addCookie(cookie);	// 응답 객체에 추가(헤더) 
	}
	
	//매개변수 이름의 쿠키값 반환
	public static String readCookie(HttpServletRequest request , String cName){
		String cookieValue = "";
		
		Cookie[] cookies =request.getCookies();
		if(cookies !=null){
			for(Cookie c: cookies){
				String cookieName=c.getName();
				if(cookieName.equals(cName)) {
					cookieValue = c.getValue();
				}
				
			}
		}
		return cookieValue;
	}
	
	//매개변수 이름의 쿠키 삭제 
	public static void deleteCookie(HttpServletResponse response, String cName) {
		makeCookie(response, cName, "", 0);
		
		// 시간을 0으로 만들어 강제 종료 시킴
	}
	
	
}
