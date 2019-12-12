package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/firsturl")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=null;
		String name=null,addrs=null;
		float age=0.0f;
		HttpSession ses=null;
	   //get PrintWriter    
		pw=res.getWriter();
		res.setContentType("text/html");
		//read form1/req1  data
		name=req.getParameter("name");
		addrs=req.getParameter("addrs");
		age=Float.parseFloat(req.getParameter("age"));
		//create Session for client
		ses=req.getSession(true);
		//palce form1/req1  data in Session object
		ses.setAttribute("name", name);
		ses.setAttribute("addrs",addrs);
		ses.setAttribute("age",age);
		//session timeout
		ses.setMaxInactiveInterval(120);
		
		//generate form2 dynamically
		pw.println("<h1 style='color:red;text-align:center'>Naukri.com- Registation Page no:2 </h1>");
		pw.println("<form action='secondurl' method='GET'>");
		pw.println("<b> SkillSet :: </b> <select name='skill' >");
		pw.println(" <option value='java'>Java</option>");
		pw.println(" <option value='.net'>.NET</option>");
		pw.println(" <option value='php'>PHP</option>");
		pw.println(" <option value='oracle'>Oracle</option>");
		pw.println("</select> <br>");
		pw.println("<b> Experience:: </b> <input type='text' name='exp'> <br>");
		pw.println("<input type='submit' value='continue'>");
		pw.println("</form>");
	
		 //close stream
		pw.close();
		
	
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		doGet(req, res);
	}

}
