<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"   prefix="sql"%>

<!-- Create jdbc con/ DataSource -->
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
                                                       url="jdbc:oracle:thin:@localhost:1521:xe"
                                                       user="system"
                                                       password="manager"/>
 <!-- execute delete query -->
 <sql:update var="count" dataSource="${ds }"  sql="DELETE FROM STUDENT WHERE SNO>=? AND SNO<=?"  >
      <sql:param value="500"/>
      <sql:param>1000</sql:param>
 </sql:update>                                                       
 <br>
 <b>No.of records that are effected :: </b>  ${count}.
   
 