<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
  <b>from ex7.jsp</b> <br>
  <c:url var="loc" value="ex4.jsp" scope="request"/>
    <c:import url="${loc}"/> 