
<%!
     public String  generateWishMessage(String uname){
	       java.util.Calendar cal=null;
	       int hour=0;
	      //get System Date and time
	      cal=java.util.Calendar.getInstance();
	      //get current hour of the day
	      hour=cal.get(java.util.Calendar.HOUR_OF_DAY);
	      //write b.logic
	      if(hour<12)
	    	    return "Good Morning::"+uname;
	      else if(hour<16)
	    	  return "Good AfterNoon::"+uname;
	      else if(hour<20)
	    	  return "Good Evening::"+uname;
	      else
	    	  return "Good Night::"+uname;
    }
%>
<%--   <h1 style="color:red;text-align:center"> Welcom to  Jsp  </h1> <br> -->
  <b> Date and time ::  <%=new java.util.Date() %></b>  <br>
  <%
    String user=request.getParameter("username");
  %>
  <b>Wish Message is :: </b> <!-- <%=generateWishMessage(user) %> -->
  
  <br><br>
<%--    requst object class name :: <%=request.getClass() %> <br> --%>
   out object class name :: <%=out.getClass() %> <br>
   pageContext obj class name :: <%=pageContext.getClass() %>
   
  
   
  
  
    
    
    
    

    