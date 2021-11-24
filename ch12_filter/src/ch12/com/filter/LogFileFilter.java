package ch12.com.filter;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.channels.ClosedByInterruptException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;

@WebFilter(
		description = "로그파일 필터", 
		urlPatterns = { "/ch12/filter02_process.jsp","/ch12/filter01_process.jsp" }, 
		initParams = { 
				@WebInitParam(name = "filename", value = "c:\\logs\\monitor.log")
		})
public class LogFileFilter implements Filter {
   PrintWriter writer;
   
	public void init(FilterConfig fConfig) throws ServletException {
	  String filename = fConfig.getInitParameter("filename");
	  if(filename==null) throw new ServletException("로그 파일의 이름을 찾을 수 없습니다.");
	  try {
		   writer = new PrintWriter(new FileWriter(filename,true),true);//FileWriter(파일명, append여부);기존내용에 추가해서 기록함.
	  }catch(Exception e) {
		  throw new ServletException("로그 파일을 열 수 없습니다.");
	  }
	}
	
    public void destroy() { writer.close();}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       writer.printf("현재 일시: %s %n", getcurrentTime());
       String clientAddr = request.getRemoteAddr();
       writer.printf("클라이언트 주소 : %s %n",clientAddr);
       
       HttpServletRequest req =(HttpServletRequest)request;
       writer.printf("요청 URI : %s %n",req.getRequestURI());
       
		chain.doFilter(request, response);
		
		String contentType = response.getContentType();
		writer.printf("문서의 콘텐츠 유형 : %s %n", contentType);
		writer.println("-----------------------------------");
	}
	
	private String getcurrentTime() {
		//날짜시간 정보를 문자열 포맷으로 변환하는 객체 생성
		DateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		return formatter.format(calendar.getTime());
	}
}
