<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

 <!-- create variable having scope -->
  <c:set  var="var1"  value="value1"  scope="session"/>
  <!-- Display variable value -->
  value ::<c:out value="${var1}" /> <br>
  <!-- Remove variable from scope -->
  <c:remove var="var1" scope="session"/>
  <!-- Display variable value -->
  value ::<c:out value="${var1}" /> <br>
  
  
      
