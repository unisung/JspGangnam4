package exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String id=request.getParameter("id");
	    String password=request.getParameter("passwd");
		if(id.equals("java") & password.equals("java")) {
			HttpSession session = request.getSession();
	    	 session.setAttribute("id_attr", id);
	    	 
	    	 RequestDispatcher rd = request.getRequestDispatcher("loginSuccess.jsp");
	    	 rd.forward(request, response);
	    }else {
	    	//출력객체 생성
	   	 PrintWriter writer = response.getWriter();
	   	 writer.print("<script>alert('아이디나 비밀번호가 일치하지 않습니다');</script>");
	   	 writer.print("<script>history.back();</script>");
	    }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
