package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/secondurl")
public class SecondServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=null;
		String skill=null;
		float exp=0.0f;
		HttpSession ses=null;
	    //general settings
		pw=res.getWriter();
		res.setContentType("text/html");
		//read form2/req2 data...
		skill=req.getParameter("skill");
		exp=Float.parseFloat(req.getParameter("exp"));
		//get Access to the Session
		ses=req.getSession(false);
		//put form2/req2 data in Session object  as session attributes
		ses.setAttribute("skill",skill);
		ses.setAttribute("exp",exp);
		//generate form3 dynamically here
		pw.println("<h1 style='color:red;text-align:center'> Naurkri.com -Job Seeker registration -Form3 </h1>");
		pw.println("<form action='thirdurl' method='GET'>");
		pw.println(" Preffered Location:: <input type='text' name='location'/><br> ");
		pw.println(" Expected Salary:: <input type='text' name='salary'/><br> ");
		pw.println(" <input type='submit' value='register'>");
		pw.println("</form>");
		//close stream
		pw.close();
	}//doGet(-,-)

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}//doPost(-,-)

}//class
