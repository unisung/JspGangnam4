<%@page import="java.util.ArrayList"%>
<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
  String id = request.getParameter("id");
  String sQty = request.getParameter("qty");
  int qty = Integer.parseInt(sQty);
  
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
  //상품등록리스트에서 상품정보 얻기  
  ArrayList<Product> goodsList = dao.getAllProducts();
  Product goods = new Product();
  for(int i=0;i<goodsList.size();i++){
	  goods = goodsList.get(i);
	  if(goods.getProductId().equals(id)) break;
  }
  
  //세션으로부터 장바구니 객체 얻기
  ArrayList<Product> list =(ArrayList<Product>)session.getAttribute("cartlist");
  //장바구나 없으면 새로 생성
  if(list==null){
	  list = new ArrayList<Product>();//장바구니 리스트 신규생성
	  session.setAttribute("cartlist", list);//빈 장바구니를 세션에 추가
  }
  //장바구니 저장 갯수 선언
  int cnt=0;
  Product goodsQnt = new Product();
  //장바구니에서
  for(int i=0;i<list.size();i++){
	  goodsQnt = list.get(i);
	  if(goodsQnt.getProductId().equals(id)){//해당id상품이 이미 존재하면
		  cnt++;//수량증가
		  int orderQuantity = goodsQnt.getQuantity()+1;//상품정보의 장바구니속성을 1증가
		  goodsQnt.setQuantity(orderQuantity);//
	  }
  }
    //cnt가 0이란건 장바구니에 해당 상품이 없다는 것임.
    if(cnt==0){
    	goods.setQuantity(1);//최초갯수 1 개 설정
    	list.add(goods);//장바구니에 수량1로 추가
    }

    //다시 원래 상세 페이지로 이동처리
    response.sendRedirect("product.jsp?id=" +id);
%>