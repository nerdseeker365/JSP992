<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!-- create or Java bean class object -->
    <jsp:useBean id="st"  class="com.nt.beans.StudentBean"  scope="session"/>
    
    <!-- set values to bean properties -->
    <%-- <jsp:setProperty name="st"  property="sno"  value="1001"/>
    <jsp:setProperty name="st"  property="sname"  value="raja"/>
    <jsp:setProperty name="st"  property="avg"  value="98.44f"/>
    <jsp:setProperty name="st"  property="result"  value="pass"/> --%>
    
    <%-- <jsp:setProperty name="st"  property="sname"  param="stname"/>
    <jsp:setProperty name="st"  property="sno"  param="stno"/>
    <jsp:setProperty name="st"  property="avg"  param="stavg"/>
    <jsp:setProperty name="st"  property="result"  param="stresult"/> --%>
    
    <<jsp:setProperty property="*" name="st"/>
    
    <b> bean class is created and values are set ..</b>