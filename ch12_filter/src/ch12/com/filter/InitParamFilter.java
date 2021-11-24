package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/InitParamFilter")
public class InitParamFilter implements Filter {
	private FilterConfig filterConfig = null;
	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("Filter02초기화...");
	   	this.filterConfig = fConfig;//web.xml에 등록 초기파라미터정보 객체 얻기
	}
	public void destroy() {System.out.println("Filter02해제...");}


	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		System.out.println("Filter02 수행...");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		String message;
		
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf8");
        PrintWriter writer = response.getWriter();
        
        if(id.equals(param1) && passwd.equals(param2)) {
        	message = "로그인 성공했습니다.";
        }else {
        	message = "로그인 실패했습니다.";
        }    
        writer.print(message);
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}
}
