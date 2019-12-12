<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <h1 style="color:red;text-align:center"> bill Details  (with Discount)  </h1>
    
    <%
         //read form data
         String name=request.getParameter("iname");
         float price=Float.parseFloat(request.getParameter("iprice"));
         float qty=Float.parseFloat(request.getParameter("iqty"));
         //get Bill Amount  as additional req param value
         float billAmt=Float.parseFloat(request.getParameter("bAmt"));
         //calc discount amount
         float discount= billAmt*0.3f;
         float finalAmount=billAmt-discount;
    %>
      <!-- The details are (with discount) -->
      <b> item name::  <%=name %> </b> <br>
      <b> item price::  <%=price %> </b> <br>
      <b> item qty::  <%=qty %> </b> <br>
      <b><i> billAmount::  <%=billAmt %> </b></i> <br>
      <b><i> discount::  <%=discount %> </i></b> <br>
      <b><i> Final bill Amount::  <%=finalAmount %> </b></i> <br>
      <br>
      <a href="form.html">home</a>
      
      
    
