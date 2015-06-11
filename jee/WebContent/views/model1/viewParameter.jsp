<!-- 89p. / 톰캣 언어 설정하는 페이지
92p. get방식 post 방식 
102p.
언어가 깨질 경우 Tomcat server.xml로 들어가서 
<Connector connectionTimeout="20000" port="9000" protocol="HTTP/1.1" redirectPort="8443"/> 를
<Connector URIEncoding="UTF-8" connectionTimeout="20000" port="9000" protocol="HTTP/1.1" redirectPort="8443"/>
로 수정
-->
<%@page import="sun.org.mozilla.javascript.internal.ast.WhileLoop"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map"%>
<%
  /*  request.setCharacterEncoding("UTF-8"); */
%>
<!--  
    request.getParameter() 는 날개 파라미터 키값과 밸류값을 리턴
    request.getParameterValues() 는 키값 없이 벨류만 리턴 (체크박스)
    request.getParameterNames() 는 키값 만 리턴(쓸모없음)
    request.getParameter 는 파라미터 벨류가 복수인 경우(로그인)
    
    
    회원가입할때 많이 필요하다. 그런데 Map으로 한번에 받아온다..
    
-->
<!doctype html>
<html lang="en">
<head>
 <meta charset="UTF-8" />
 <title>폼값을 받은 페이지</title>
</head>
<body>
   <!-- 넘어왔음... -->
<div>
   <!--   --> 
    <b>request.getParameter() 메소드 사용</b>
    name 파라미터 = <%= request.getParameter("name") %>
    address 파라미터 = <%=request.getParameter("address") %>
    <p> </p>
    <b>request.getParameterValues() 메소드 사용</b>
    <%
    String [] values = request.getParameterValues("pet"); 
    if(values != null){
     for(int i=0 ; i< values.length ; i++){
      %>
      
      넘어온 벨류<%= values[i]%>  <!-- 화면단에 보여지는 표현식 -->
      
      <%
     }
       
    } 
    
    %>
    <br />
    <b> request.getParameterNames() 메소드 사용</b>  <!-- 노가다를 해야하는 것을 증명 했다.. -->
    <% 
      Enumeration paramEnum = request.getParameterNames();
      while(paramEnum.hasMoreElements()){
       String name = (String)paramEnum.nextElement();
       //System.out.println(name);
       %>
          
       <%= name %> <!--표현식이잖아 화면에 뿌려준다는 개념!!!  -->
       
       <%
      }
    
    %>
    <br />
    <b>request.getParameterMap() 메소드 사용 </b>
    <%
       Map paramMap = request.getParameterMap();
       String[] nameParam = (String[])paramMap.get("name");
      if(nameParam != null){
       %>
       이  름 = <%= nameParam[0]%>
      
       <% 
      }
    
    %>
    <br />
    <!-- 한글이 깨지는 이유는 페이지 단에서의 언어설정은 했지만 , 톰캣에 대한 언어설정은 하지 않아서입니다. -->
</div>   
</body>
</html> 