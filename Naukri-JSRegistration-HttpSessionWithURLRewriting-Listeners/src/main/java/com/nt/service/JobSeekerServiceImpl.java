package com.nt.service;

import com.nt.bo.JobSeekerBO;
import com.nt.dao.JobSeekerDAO;
import com.nt.dao.JobSeekerDAOImpl;
import com.nt.dto.JobSeekerDTO;

public class JobSeekerServiceImpl implements JobSeekerService {
	private  JobSeekerDAO  dao;
	
	public JobSeekerServiceImpl() {
		dao=new JobSeekerDAOImpl(); 
	}

	@Override
	public String register(JobSeekerDTO dto) throws Exception {
		JobSeekerBO bo=null;
		int count=0;
		//convert  dto to  bo
		bo=new JobSeekerBO();
		bo.setName(dto.getName());
		bo.setAddrs(dto.getAddrs());
		bo.setAge(dto.getAge());
		bo.setExpectedSalary(dto.getExpectedSalary());
		bo.setLocation(dto.getLocation());
		bo.setExperience(dto.getExperience());
		bo.setSkill(dto.getSkill());
		//use DAO
		count=dao.insert(bo);
		//process the Result
		if(count==0)
			 return "registration failed";
		else
			return "registartion succced";
	}//method

}//class
