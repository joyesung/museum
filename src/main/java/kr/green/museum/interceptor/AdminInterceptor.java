package kr.green.museum.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.green.museum.vo.MemberVO;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, 
			Object handler)
			throws Exception {
		HttpSession session = request.getSession();//세션에 유저 정보 입력
		MemberVO user = (MemberVO)session.getAttribute("user");//user의 존재 확인하는 역할
		if(user == null || !user.getAuthority().equals("ADMIN")) {						
			response.sendRedirect(request.getContextPath()+"/"); //유저 정보가 없으면절대경로(메인페이지)로감
		}
		return true;
	}
}