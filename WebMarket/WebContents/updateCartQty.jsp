<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
   String id = request.getParameter("id");
   String qty = request.getParameter("qty");
   
  //파라미터가 넘어오지 않으면 상품목록 페이지로 이동처리
   if(id==null || id.trim().equals("")){
	   response.sendRedirect("products.jsp");
	   return;
   }
  
  ProductRepository dao = ProductRepository.getInstance();
  
  Product product = dao.getProductById(id);
  //상품정보가 없으면 에러페이지로 이동 처리
  if(product==null){ response.sendRedirect("exceptionNoProductId.jsp");}
  
  //세션으로부터 장바구니 정보 얻기
  ArrayList<Product> cartList =(ArrayList<Product>)session.getAttribute("cartlist");
  Product goodsQnt = new Product();
  //장바구니에서 해당 id의 상품 삭제 처리
  for(int i=0;i<cartList.size();i++){
	   goodsQnt = cartList.get(i);
	   if(goodsQnt.getProductId().equals(id)){
		  //변경수량 저장
	   }
  }
  
  //카트페이지로 이동하여 삭제후 내역확인
  response.sendRedirect("cart.jsp");

%>