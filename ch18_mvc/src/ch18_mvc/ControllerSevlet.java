package ch18_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
     response.setContentType("text/html;charset=utf-8");
     String id = request.getParameter("id");
     String password = request.getParameter("passwd");
     
     LoginBean bean = new LoginBean();
     bean.setId(id);
     bean.setPassword(password);
     //forward로 이동할 페이지에 전달할 객체(Object)를 "bean"이라는 이름으로 request에 저장 
     request.setAttribute("bean", bean);
     
     //로그인 데이타 중 비번 확인 메소드로 처리결과 받기
     boolean status = bean.validate();
     String viewPage="";
     
     if(status) {//status==true
    	 viewPage="mvc_succes.jsp";
     }else {//statue==false
    	 viewPage="mvc_error.jsp";
     }
 	//view페이지로 이동 처리
	 RequestDispatcher rd = request.getRequestDispatcher(viewPage);
	 rd.forward(request, response);    
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
