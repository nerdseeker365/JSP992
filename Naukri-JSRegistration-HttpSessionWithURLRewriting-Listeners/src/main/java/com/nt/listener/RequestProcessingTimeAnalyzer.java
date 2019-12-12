package com.nt.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class RequestProcessingTimeAnalyzer implements ServletRequestListener {
	private long start,end;
	
	public RequestProcessingTimeAnalyzer() {
		System.out.println("RequestProcessingTimeAnalyzer:0-param constructor");
	}
	
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		start=System.currentTimeMillis();
	}
	
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		HttpServletRequest req=null;
		ServletContext sc=null;
		end=System.currentTimeMillis();
		//get request obj
		req=(HttpServletRequest) sre.getServletRequest();
		//get ServleTContext obj
		sc=req.getServletContext();
		//write log message
		sc.log(req.getRequestURI()+" has taken "+(end-start)+" ms");

	}

}
