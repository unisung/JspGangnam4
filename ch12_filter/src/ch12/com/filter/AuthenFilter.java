package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter01 초기화...");
	}

	@Override
	public void doFilter(ServletRequest request, 
			             ServletResponse response, 
			             FilterChain chain)
			throws IOException, ServletException {
		  System.out.println("Filter01.jsp 수행...");
		  String name = request.getParameter("name");
		  
		  if(name==null|| name.equals("")) {
			  response.setCharacterEncoding("utf-8");
			  response.setContentType("text/html;charset=utf-8");
			  PrintWriter writer = response.getWriter();//출력객체 얻기
			  String message = "입력된 name 값은 null입니다.";
			  writer.println(message);
			  return;//다음 필터(혹은 리소스)로 전달 불가-클라이언트로 되돌아감.
		  }
		  //다음 필터(혹은 요청한 리소스 자원)로 전달.
		  chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
	  System.out.println("Filter01 해제...");
	}
}
