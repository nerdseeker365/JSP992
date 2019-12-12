<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <!-- create or Java bean class object -->
    <jsp:useBean id="st"  class="com.nt.beans.StudentBean"  scope="session"/>
    
    <!-- set values to bean properties -->
    sno ===  <jsp:getProperty property="sno" name="st"/> <br>
    sname==== <jsp:getProperty property="sname" name="st"/> <br>
    Avg==== <jsp:getProperty property="avg" name="st"/> <br>
    result==== <jsp:getProperty property="result" name="st"/> <br>
    