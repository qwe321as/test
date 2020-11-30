<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String name = request.getParameter("name"); 
session.setAttribute("name", name);  
System.out.println(name);

%>
<script>
location.href="cho.jsp";         
</script>
	