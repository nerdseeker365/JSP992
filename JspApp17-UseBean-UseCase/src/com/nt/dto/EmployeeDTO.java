package com.nt.dto;

import java.io.Serializable;

public class EmployeeDTO implements Serializable {
	private String ename;
	private String edesg;
	private  String eaddrs;
	private  float esalary;
	private  float grossSalary;
	private  float netSalary;
	
	public EmployeeDTO() {
		System.out.println("EmployeeDTO:: 0-param constructor");
	}

	public String getEname() {
		System.out.println("EmployeeDTO.getEname()");
		return ename;
	}

	public void setEname(String ename) {
		System.out.println("EmployeeDTO.setEname(-)");
		this.ename = ename;
	}

	public String getEdesg() {
		System.out.println("EmployeeDTO.getEdesg()");
		return edesg;
	}

	public void setEdesg(String edesg) {
		System.out.println("EmployeeDTO.setEdesg(-)");
		this.edesg = edesg;
	}

	public String getEaddrs() {
		System.out.println("EmployeeDTO.getEaddrs()");
		return eaddrs;
	}

	public void setEaddrs(String eaddrs) {
		System.out.println("EmployeeDTO.setEaddrs()");
		this.eaddrs = eaddrs;
	}

	public float getEsalary() {
		System.out.println("EmployeeDTO.getEsalary()");
		return esalary;
	}

	public void setEsalary(float esalary) {
		System.out.println("EmployeeDTO.setEsalary()");
		this.esalary = esalary;
	}

	public float getGrossSalary() {
		System.out.println("EmployeeDTO.getGrossSalary()");
		return grossSalary;
	}

	public void setGrossSalary(float grossSalary) {
		System.out.println("EmployeeDTO.setGrossSalary()");
		this.grossSalary = grossSalary;
	}

	public float getNetSalary() {
		System.out.println("EmployeeDTO.getNetSalary()");
		return netSalary;
	}

	public void setNetSalary(float netSalary) {
		System.out.println("EmployeeDTO.setNetSalary()");
		this.netSalary = netSalary;
	}
	

}
