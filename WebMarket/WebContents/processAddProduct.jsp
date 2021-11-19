<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
   
   String productId = request.getParameter("productId");
   String name = request.getParameter("name");
   String unitPrice = request.getParameter("unitPrice");
   String description = request.getParameter("description");
   String manufacturer = request.getParameter("manufacturer");
   String category = request.getParameter("category");
   String unitsInStock = request.getParameter("untisInStock");
   String condition = request.getParameter("condition");
  
   Integer price;
   if(unitPrice.isEmpty()) price=0;
   else price =Integer.valueOf(unitPrice);
   
   long stock;
   if(unitsInStock.isEmpty()) stock=0;
   else stock = Long.valueOf(unitsInStock);
   
   //상품등록
   ProductRepository dao = ProductRepository.getInstance();
   
   Product newProduct = new Product();
   newProduct.setProductId(productId);
   newProduct.setPname(name);
   newProduct.setUnitPrice(price);
   newProduct.setDescription(description);
   newProduct.setManufacturer(manufacturer);
   newProduct.setCategory(category);
   newProduct.setUnitsInStock(stock);
   newProduct.setCondition(condition);
   
   //상품 정보 추가
   dao.addProduct(newProduct);
   
   //상품 리스트로 이동
   response.sendRedirect("products.jsp");

%>
</body>
</html>