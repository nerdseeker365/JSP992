<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
  <b>from ex8.jsp (start)</b> <br>

  <c:url var="googleUrl"  value="https://google.com/search?q=ameerpet"/>
  
  <c:redirect  url="${googleUrl}"/>
  
  <b>from ex8.jsp (end)</b> <br>