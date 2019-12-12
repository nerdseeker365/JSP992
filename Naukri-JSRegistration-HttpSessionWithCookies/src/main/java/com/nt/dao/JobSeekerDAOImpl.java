package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nt.bo.JobSeekerBO;

public class JobSeekerDAOImpl implements JobSeekerDAO {
	private static  final String  NAUKRI_INSERT="INSERT INTO  NAUKRI_INFO VALUES(JSID_SEQ.NEXTVAL,?,?,?,?,?,?,?)";
	private   Connection  getPooledConnection()throws Exception {
		InitialContext ic=null;
		DataSource ds=null;
		Connection con=null;
		//perform Jndi Lookup
		ic=new InitialContext();
		ds=(DataSource) ic.lookup("java:/comp/env/DsJndi");
		//get pooled jdbc con object
		con=ds.getConnection();
		return con;
	}

	@Override
	public int insert(JobSeekerBO bo) throws Exception{
		Connection con=null;
		PreparedStatement ps=null;
		int result=0;
		//get Pooled Jdbc con object
		con=getPooledConnection();
		//create PreparedStatement object
		ps=con.prepareStatement(NAUKRI_INSERT);
		//set values to Query params
		ps.setString(1,bo.getName());
		ps.setString(2,bo.getAddrs());
		ps.setFloat(3,bo.getAge());
		ps.setString(4,bo.getSkill());
		ps.setFloat(5,bo.getExperience());
		ps.setString(6,bo.getLocation());
		ps.setFloat(7,bo.getExpectedSalary());
		
		//execute the Query
		result=ps.executeUpdate();
		
		return result;
	}//main
}//class
