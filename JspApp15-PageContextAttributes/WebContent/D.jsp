<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <b> from D.jsp</b> <br>
    <!-- Read and display pageContext attribute values -->
     attr1 (page) value ::  <%=pageContext.getAttribute("attr1",pageContext.PAGE_SCOPE)  %> <br>
     attr2 (request) value ::  <%=pageContext.getAttribute("attr2",pageContext.REQUEST_SCOPE)  %> <br>
     attr3 (session) value ::  <%=pageContext.getAttribute("attr3",pageContext.SESSION_SCOPE)  %> <br>
     attr4 (application) value ::  <%=pageContext.getAttribute("attr4",pageContext.APPLICATION_SCOPE)  %> <br>
     
     
     