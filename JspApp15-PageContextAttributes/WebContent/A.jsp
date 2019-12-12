<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <b>  from A.jsp</b>  <br>
    <!-- create pageContext attributes -->
    <%
       pageContext.setAttribute("attr1", "Val1",pageContext.PAGE_SCOPE);
      pageContext.setAttribute("attr2", "Val2",pageContext.REQUEST_SCOPE);
      pageContext.setAttribute("attr3", "Val3",pageContext.SESSION_SCOPE);
      pageContext.setAttribute("attr4", "Val4",pageContext.APPLICATION_SCOPE);
        %>
        
        <!-- Forward the request B.jsp -->
        <jsp:forward page="B.jsp"/>
    
    