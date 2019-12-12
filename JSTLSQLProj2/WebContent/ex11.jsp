<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"   prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"   prefix="sql"%>

<!-- Create jdbc con/ DataSource -->
<sql:setDataSource var="ds" driver="oracle.jdbc.driver.OracleDriver"
                                                       url="jdbc:oracle:thin:@localhost:1521:xe"
                                                       user="system"
                                                       password="manager"/>
<!-- Execute SQL select Query and get the ResultSet object-->
<sql:query dataSource="${ds}"  var="rs"  sql="SELECT * FROM STUDENT"  />

<!-- Process the ResultSet object -->
<b>Records are </b>  <br>
<c:forEach  var="row" items="${rs.rows}">
     ${row.sno }  &nbsp; &nbsp; &nbsp; ${row.sname }   &nbsp; &nbsp; &nbsp; ${row.sadd } <br>
</c:forEach>







                                                           
