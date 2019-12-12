package com.nt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.BookDTO;
import com.nt.service.BookStoreMgmtService;
import com.nt.service.BookStoreMgmtServiceImpl;

@WebServlet("/controller")
public class MainControllerServlet  extends HttpServlet {
	private  BookStoreMgmtService  service=null;
	@Override
	public void init() throws ServletException {
	     service=new BookStoreMgmtServiceImpl();
	}
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String[] categories=null;
		String source=null;
		List<BookDTO> listDTO=null;
		RequestDispatcher rd=null;
		String target=null;
		//read form data
		categories=req.getParameterValues("category");
		source=req.getParameter("source");
		try {
		//use service
		listDTO=service.searchBooksByCategory(categories);
		// keep results in request scope
		req.setAttribute("bookResults",listDTO);
		//forward to result page
		  if(source.equalsIgnoreCase("html"))
			   target="/html_print.jsp";
		  else
			  target="/excel_screen.jsp";
		  rd=req.getRequestDispatcher(target);
		   rd.forward(req,res);
		}
		catch(Exception e) {
			  rd=req.getRequestDispatcher("error.jsp");
			   rd.forward(req,res);
		}
	}//doGet(-,-)
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 doGet(req,res);
	}//doPost(-,-)

	@Override
	public void destroy() {
	    service=null;
	}
}
