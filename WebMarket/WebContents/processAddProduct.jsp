<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="javax.swing.DefaultBoundedRangeModel"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
     //upload처리
     String filename="";
     String realFolder = "c:\\upload";//웹 어플리케이션상의 절대 경로
     int maxSize = 5 * 1024 * 1024;//5mb - 전송될 파일의 최대 크기
     String encType = "utf-8";
     
     //MultipartRequest객체 생성
     MultipartRequest multi 
      = new MultipartRequest(request,
    		                 realFolder,
    		                 maxSize, 
    		                 encType, 
    		                 new DefaultFileRenamePolicy());
   //request -> multi로 변경
   String productId = multi.getParameter("productId");
   String name = multi.getParameter("name");
   String unitPrice = multi.getParameter("unitPrice");
   String description = multi.getParameter("description");
   String manufacturer = multi.getParameter("manufacturer");
   String category = multi.getParameter("category");
   String unitsInStock = multi.getParameter("untisInStock");
   String condition = multi.getParameter("condition");
  
   Integer price;
   if(unitPrice==null || unitPrice.isEmpty()) price=0;
   else price =Integer.valueOf(unitPrice);
   
   long stock;
   if(unitsInStock==null || unitsInStock.isEmpty()) stock=0;
   else stock = Long.valueOf(unitsInStock);
   
   //전송된 파일정보 얻기
   Enumeration files = multi.getFileNames();
   String fname =(String)files.nextElement();
   String fileName = multi.getFilesystemName(fname);//전송되어서 서버로 넘어온파일명
   
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
   //전송된 파일의 이름 저장
   newProduct.setFilename(fileName);
   
   //상품 정보 추가
   dao.addProduct(newProduct);
   
   //상품 리스트로 이동
   response.sendRedirect("products.jsp");
%>
</body>
</html>