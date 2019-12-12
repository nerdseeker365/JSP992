<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <b> start of B.jsp</b> <br>
    <%=new java.util.Date() %> <br>
    <b>end of B.jsp</b>
    <br> Book name is :: <%=request.getParameter("bkName") %>  <br>
    <br> Book price is :: <%=request.getParameter("bkPrice") %>  <br>
    