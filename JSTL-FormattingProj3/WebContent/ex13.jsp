<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

 <fmt:setLocale value="hi-IN"/>
 
 <jsp:useBean id="dt"  class="java.util.Date" />
 <fmt:formatDate type="both" value="${dt}"  var="fdt"   dateStyle="SHORT"  />
 formatted date :: ${fdt} .  <br>
 
 <fmt:formatNumber type="currency" var="fno" value="2000000"  />
 formatted number :: ${fno} .  <br>
 
 
 <fmt:setBundle basename="com/nt/commons/myfile"/>
 <fmt:message key="wish.msg" var="fmsg" />
 Formatted Message :: ${fmsg}

 
 
 
 
 
     
