<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
  //read form data
  String ss=request.getParameter("ss");
//prepare URL for send Redirection
String url="https://www.google.com/search?q="+ss;
// perform sendRedirection
response.sendRedirect(url);
%>
    