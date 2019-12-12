package com.nt.listener;

import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class WebAppMaintenceListener implements ServletContextListener {
	  private  long start,end;
	@Override
	public void contextInitialized(ServletContextEvent sce) {
	   start=System.currentTimeMillis();
	   sce.getServletContext().log(sce.getServletContext().getContextPath()+" is deployed at ::"+new Date());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
	end=System.currentTimeMillis();
	   sce.getServletContext().log(sce.getServletContext().getContextPath()+" is undeployed/stopped/reloaded at ::"+new Date()+" duration ::"+(end-start)+"ms");

			
	}

}
