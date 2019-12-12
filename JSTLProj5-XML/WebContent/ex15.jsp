<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<c:import   var="file"  url="order.xml"/>

<x:parse  var="doc"  xml="${file}" />

 <!-- display all item details -->
 <b> all items are</b> <br>
  <x:forEach select="$doc/orders/order"  var="ord">
     <x:out select="$ord/name"/> <br>
     <x:out select="$ord/price"/> <br>
  </x:forEach>
  
  <!-- display all items whose price is>=500 -->
  <b> all items whose price is >=500 are</b> <br>
  <x:forEach select="$doc/orders/order"  var="ord">
    <x:if select="$ord/price >=500">
     <x:out select="$ord/name"/> <br>
     <x:out select="$ord/price"/> <br>
     </x:if>
  </x:forEach>
 
  

    
