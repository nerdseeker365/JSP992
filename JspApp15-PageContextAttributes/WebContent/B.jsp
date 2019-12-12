<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <b> from B.jsp</b> <br>
    <!-- Read and display pageContext attribute values -->
     attr1 (page) value ::  <%=pageContext.findAttribute("attr1")  %> <br>
     attr2 (request) value ::  <%=pageContext.findAttribute("attr2")  %> <br>
     attr3 (session) value ::  <%=pageContext.findAttribute("attr3")  %> <br>
     attr4 (application) value ::  <%=pageContext.findAttribute("attr4")  %> <br>
     
     <!-- Forward to  C.jsp -->
     <jsp:forward page="C.jsp"/>
     
     