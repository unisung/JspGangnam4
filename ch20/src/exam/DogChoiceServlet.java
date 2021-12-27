package exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/choiceDog")
public class DogChoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 response.setContentType("text/html;charset=utf-8");
     //출력객체 생성
	 PrintWriter writer = response.getWriter();
	 String[] dog =request.getParameterValues("dog");
	 //응답결과 출력
	 writer.print("<html><head></head><body><table align='center'><tr>");
	 for(int i=0;i<dog.length;i++) {
		 writer.print("<td><img src='"+dog[i]+"'></td>");
	 }
	 writer.print("</tr></table></body></html>");
	 writer.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
