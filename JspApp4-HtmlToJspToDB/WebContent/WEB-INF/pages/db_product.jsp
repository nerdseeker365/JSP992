<%@page import="java.sql.*"    errorPage="error.jsp"%>

<%!
  Connection con=null;
  PreparedStatement ps1=null,ps2=null;
 public void jspInit(){
	 try{
		 //get Access to ServletConfig objct
		 ServletConfig cg=getServletConfig();
		 String driver=cg.getInitParameter("driver");
		 String url=cg.getInitParameter("url");
		 String uname=cg.getInitParameter("dbuser");
		 String pwd=cg.getInitParameter("dbpwd");
	 //register JDBC driver s/w
	 Class.forName(driver);
	 //establish the connection
	 con=DriverManager.getConnection(url,uname,pwd);
	 //create JDBC PrepredStatement objects
	 ps1=con.prepareStatement("INSERT INTO PRODUCT VALUES(PID_SEQ.NEXTVAL,?,?,?)");
	 ps2=con.prepareStatement("SELECT * FROM PRODUCT");
	 }
	catch(ClassNotFoundException cnf){
		cnf.printStackTrace();
	}
	 catch(SQLException se){
		 se.printStackTrace();
	 }
	 catch(Exception e){
		 e.printStackTrace();
	 }
}//jspInit()
%>
<%
   //read special additional req param value
   String pval=request.getParameter("s1");
   if(pval.equalsIgnoreCase("register")){  //for Submit Button
	   //read form data
	   String name=request.getParameter("pname");
	   float price=Float.parseFloat(request.getParameter("price"));   
	   float qty=Float.parseFloat(request.getParameter("qty"));
	   //set  values to Query params
	   ps1.setString(1,name);
	   ps1.setFloat(2,price);
	   ps1.setFloat(3,qty);
	   //execute the Query
	   int count=ps1.executeUpdate();
	   //process the Result
	   if(count==0){  %>
		   <b> Registration Failed</b>
	<%      
	   }
	   else{  %>
		   <b> Registration Succeded</b>
	  <% }
   }
   else{
	    //execute select Query
	   ResultSet rs=ps2.executeQuery();
	    // get ResultSetMetaData object
	    ResultSetMetaData rsmd=rs.getMetaData();
	    //print col names as table heading row content
	    int colCount=rsmd.getColumnCount();
	    %>
	     <table  border="1">
	        <tr>  
	         <%
	              for(int i=1;i<=colCount;++i){  %>
	            	  <th><%=rsmd.getColumnLabel(i) %>    </th>
	            <%  }  %>
	            </tr>
	           <!-- process the ResultSet  object -->
	         <%   while(rs.next()){  %>
	            	<tr>
	            	<%
	            	   for(int i=1;i<=colCount;++i){  %>
	            		   <td><%=rs.getString(i)%>    </td>
	            	  <% }
       		            	%>
	            	</tr>
	           <%  }//while
	         %>
	           </tr>
	     </table>
	     <%
   }//else
	     %>
<br> 
 <a  href="form.html">home</a>




<%! public  void jspDestroy(){
        //close jdbc objs
        try{
        	if(ps1!=null)
        		ps1.close();
        }
        catch(SQLException se){
        	se.printStackTrace();
        }
        try{
        	if(ps2!=null)
        		ps2.close();
        }
        catch(SQLException se){
        	se.printStackTrace();
        }
        
        try{
        	if(con!=null)
        		con.close();
        }
        catch(SQLException se){
        	se.printStackTrace();
        }
  }//jspDestroy()
%>



