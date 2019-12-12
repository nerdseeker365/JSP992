
<%!
   public   void  jspInit(){
	try{
     Class.forName("java.util.Date");
	}
	catch(ClassNotFoundException cnf){
		cnf.printStackTrace();
	}
	  ServletConfig cg=getServletConfig();
	  ServletContext sc=getServletContext();
	   System.out.println("p1 inti param value::"+cg.getInitParameter("p1"));
	   System.out.println("c2 context param value::"+sc.getInitParameter("c2"));
	    System.out.println("config obj class name::"+cg.getClass());
	    System.out.println("application obj class name::"+sc.getClass());
    }
%>

 <b>JDBC driver Loaded111 </b>