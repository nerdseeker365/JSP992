package com.nt.listener;

import java.util.Date;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

  @WebListener
public class SessionDurationListener implements HttpSessionListener {
   private   long start,end;
   
   public SessionDurationListener() {
	System.out.println("SessionDurationListener:: 0-param constructor");
}
    

	public void sessionCreated(HttpSessionEvent se)  {
		start=System.currentTimeMillis();
		//write log message
		se.getSession().getServletContext().log("Sesssion started at"+new Date());
    }

	public void sessionDestroyed(HttpSessionEvent se)  { 
		end=System.currentTimeMillis();
		//write log message
		se.getSession().getServletContext().log("Session ended at"+new Date()+" duration ::"+(end-start)+" ms");
    }
	
}
