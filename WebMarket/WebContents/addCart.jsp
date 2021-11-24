<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String id = request.getParameter("id");
//넘어온 파라미터가 없으면 products.jsp로 이동처리
  if(id == null || id.trim().equals("")){
	   response.sendRedirect("products.jsp");
	   return;
  }
   
  ProductRepository dao = ProductRepository.getInstance();
  //id에 해당하는 상품정보 얻기
  Product product = dao.getProductById(id);
  //상품정보없으면 에러페이지로 이동 처리
  if(product == null){ response.sendRedirect("exceptionNoProductId.jsp");}
  
  ArrayList<Product> goodsList = dao.getAllProducts();
  Product goods = new Product();
  for(int i=0;i<goodsList.size();i++){
	  
  }

%>