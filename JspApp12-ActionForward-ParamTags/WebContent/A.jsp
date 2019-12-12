<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <b> Start of A.jsp</b>
    <br>
    <%
      float price=600.55f;
    %>
    <jsp:forward page="B.jsp"> 
             <jsp:param value="CRJ" name="bkName"/>
             <jsp:param value="<%=price %>" name="bkPrice"/>
    </jsp:forward>
    <br>
    <b> End of A.jsp </b>
    
    