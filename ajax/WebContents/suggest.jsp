<%@page import="java.util.Collections"%><%@page import="java.util.ArrayList"%><%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>    
<%-- 선언부 --%>
<%!
	String[] keywords={"AJAX", "AJAX 실전 프로그래밍", "자바", 
			 "자바 프로그래밍","자바서버 페이지", "자바스터디", "자바서비스", "자바캔"};
    public List<String> search(String keyword){
    	List<String> result = new ArrayList<String>();
    	keyword = keyword.toUpperCase();
       //문자열이 넘어오지 않거나 빈 문자열이면 빈 리스트 리턴,
    	if(keyword==null || keyword.equals("")){
    		return Collections.EMPTY_LIST;  
    	}
        //넘어온 검색어가 keywords배열의 값으로 시작하면 리턴할 배열에 추가
    	for(int i=0;i<keywords.length;i++){
    		if(((String)keywords[i]).startsWith(keyword)){
    			result.add(keywords[i]);
    		}
    	}
    	return result;
    }
%>
<%-- 스크립틀릿 --%>
<%
	request.setCharacterEncoding("utf-8");
    String keyword = request.getParameter("keyword");
    List<String> keywordList = search(keyword);
    
    out.print(keywordList.size());
    out.print("|");
    for(int i=0;i<keywordList.size();i++){
    	String key = keywordList.get(i);
    	out.print(key);
    	if(i<keywordList.size()-1){
    		out.print(",");
    	}
    }
%>