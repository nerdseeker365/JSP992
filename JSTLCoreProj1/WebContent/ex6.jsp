<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c"%>

<c:set var="msg"  value="hello  how are u ?"/>

<c:forTokens  var="tkn" items="${msg}" delims=" ">
     ${tkn} <br>
</c:forTokens>



    
