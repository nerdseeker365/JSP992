<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    
    <!--   create Service class object -->
    <jsp:useBean id="empService"  class="com.nt.service.EmployeeMgmtServiceImpl"  scope="application"/>
    
    
    <!-- Write Form data to DTO class object -->
    <jsp:useBean id="dto"  class="com.nt.dto.EmployeeDTO"  scope="request"/>
    <jsp:setProperty name="dto"  property="*"/>
    
    <!--  Invoke service class b.mehtod -->
    <%
         empService.fetchSalaryDetails(dto);
    %>
    //Dispaly salary detials
    <b> name ::</b><jsp:getProperty property="ename" name="dto"/>
    <b> Addrs ::</b><jsp:getProperty property="eaddrs" name="dto"/>    
     <b> desg ::</b><jsp:getProperty property="edesg" name="dto"/>
    <b>saalary ::</b><jsp:getProperty property="esalary" name="dto"/>
    <b>Gross saalary ::</b><jsp:getProperty property="grossSalary" name="dto"/>
     <b>netsalary ::</b><jsp:getProperty property="netSalary" name="dto"/>
    
    
    
    
    //add hyperlink
    <a href="form.html">home </a>
