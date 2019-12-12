package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.dto.JobSeekerDTO;
import com.nt.service.JobSeekerService;
import com.nt.service.JobSeekerServiceImpl;

@WebServlet("/thirdurl")
public class ThirdServlet extends HttpServlet {
	   JobSeekerService  service=null;
	@Override
	public void init() throws ServletException {
	     service=new JobSeekerServiceImpl();
	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	   PrintWriter pw=null;
	   String location=null;
	   float expSalary=0.0f;
	   HttpSession ses=null;
	   String name=null,addrs=null,skill=null;
	   float age=0.0f,exp=0.0f;
	   JobSeekerDTO dto=null;
	   String resultMsg=null;
		//general settings
	   pw=res.getWriter();
	   res.setContentType("text/html");
	   //read  form3/req3  data
	   location=req.getParameter("location");
	   expSalary=Float.parseFloat(req.getParameter("salary"));
	   //get Access to Session
	   ses=req.getSession(false);
	   //get form1/req1 and form2/req2 data  from Session object
	   name=(String) ses.getAttribute("name");
	   addrs=(String) ses.getAttribute("addrs");
	   skill=(String) ses.getAttribute("skill");
	   age=(Float)ses.getAttribute("age");
	   exp=(Float)ses.getAttribute("exp");
	   //prpeare DTO class having all 3 forms of data
	   dto=new JobSeekerDTO();
	   dto.setName(name);
	   dto.setAddrs(addrs);
	   dto.setAge(age);
	   dto.setSkill(skill);
	   dto.setExperience(exp);
	   dto.setLocation(location);
	   dto.setExpectedSalary(expSalary);
	   try {
	   //use Service
	     resultMsg=service.register(dto);
	     pw.println("<h1> Result ::::"+resultMsg+"</h1>");
	     //invalidate  the session
	     ses.invalidate();
	   }
	   catch(Exception e) {
		   pw.println("<h1> Internal Problem --Try Again</h1>");
		   e.printStackTrace();
	   }
	   
	   //add hyperlink
	   pw.println("<br><a href='form.html'>home</a>");
	   
	   //close stream
	   pw.close();
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
          doGet(req,res);
	}

}
