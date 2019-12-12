<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>
 <b>All request parameter names and values </b>  <br>
<c:forEach  var="p"  items="${paramValues}">
     request param name ::  ${p.key} <br>
     request param values::  
       <c:forEach  var="pv" items="${p.value}">
            ${pv}  <br>
       </c:forEach>
</c:forEach>
<br><bR>
<b> all request header names and values</b>  <br>
<c:forEach  var="h"  items="${headerValues}">
     header name ::  ${h.key} <br>
     header values::  
       <c:forEach  var="hv" items="${h.value}">
            ${hv}  <br>
       </c:forEach>
</c:forEach>

    
    
