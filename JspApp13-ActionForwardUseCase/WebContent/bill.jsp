<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  %>
    
<%
   //read form data
   String name=request.getParameter("iname");
   float  price=Float.parseFloat(request.getParameter("iprice"));
   float qty=Float.parseFloat(request.getParameter("iqty"));
   //calc bill Amount
   float billAmt=price*qty;
    if(billAmt>=50000) { %>
           <jsp:forward page="discount.jsp">
               <jsp:param name="bAmt"  value="<%=billAmt%>"/>  
           </jsp:forward>
   <%
    }//if
    else{  %>
    	   <h1 style="color:red;text-align:center"> Bill Details (with out discount)  </h1>
    	   <b> Item name ::</b> <%=name  %>  <br>
    	   <b>Item Price ::</b> <%=price %>  <br>
    	   <b> Item Qty ::</b> <%=qty %>  <br>
    	   <b> <i>Bill Amount</i> <%=billAmt %></b> <br>
    	   <br>
    	   <a href="form.html">home</a>
<%    }  %>
                 
    	
       
   
