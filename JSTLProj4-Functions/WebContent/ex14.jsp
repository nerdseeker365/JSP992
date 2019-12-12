<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>

<%@taglib  uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn" %>

<c:set  var="msg"  value="how are u ?"/>

uppercase :: ${fn:toUpperCase(msg) } <br>
lowercase  :: ${fn:toLowerCase(msg) } <br>
length  :: ${fn:length(msg) } <br>
substirng  :: ${fn:substring(msg,1,5) } <br>



    
