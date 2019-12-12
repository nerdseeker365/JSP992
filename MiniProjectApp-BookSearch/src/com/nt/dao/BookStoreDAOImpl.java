package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.nt.bo.BookBO;

public class BookStoreDAOImpl implements BookStoreDAO {
	
	//get Pooled JDBC con object
	private Connection  getPooledConnection() throws Exception{
		InitialContext ic=null;
		DataSource ds=null;
		Connection con=null;
		//get InitialContext object
		ic=new InitialContext();
		//get DataSource obj from jndi registry
		ds=(DataSource) ic.lookup("java:/comp/env/DsJndi");
		//get Pooled jdbc con  object
		con=ds.getConnection();
		return con;
	}

	@Override
	public List<BookBO> findBooks(String[] category) throws Exception {
		 StringBuffer cond=null;
		 Connection con=null;
		 PreparedStatement ps=null;
		 ResultSet rs=null;
		 List<BookBO> listBO=null;
		 BookBO bo=null;
		//convert recievdd categories into  SQL Condition
		 cond=new StringBuffer("(");
		 for(int i=0;i<category.length;++i) {
			 if(i==category.length-1)
				 cond.append("'"+category[i]+"'");
			 else
				 cond.append("'"+category[i]+"',");
		 }
		 cond.append(")");
		 try {
		 //get Pooled JDBC connection
			 con=getPooledConnection();
			 //create PreparedSttement object
			 ps=con.prepareStatement("SELECT BOOKID,BOOKNAME,AUTHORNAME,PRICE,PUBLISHER,STATUS,CATEGORY FROM BOOKSTORE WHERE CATEGORY  IN "+cond);
			 //execute  the query
			 rs=ps.executeQuery();
			 //copy ResultSet obj records to ListCollection
			 listBO=new ArrayList();
			 while(rs.next()) {
				 //copy each reccord to  One BO class object
				 bo=new BookBO();
				 bo.setBookId(rs.getInt(1));
				 bo.setBookName(rs.getString(2));
				 bo.setAuthorName(rs.getString(3));
				 bo.setPrice(rs.getFloat(4));
				 bo.setPublisher(rs.getString(5));
				 bo.setStatus(rs.getString(6));
				 bo.setCategory(rs.getString(7));
				 //add Each BO class obj to List Collection
				listBO.add(bo);
			 }//while
		 }//try
		 catch(SQLException se) {
			 se.printStackTrace();
			 throw se;
		 }
		 catch(ClassNotFoundException cnf) {
			 cnf.printStackTrace();
			 throw cnf;
		 }
		 catch(Exception e) {
			 e.printStackTrace();
			 throw e;
		 }
		 finally {
			 //close jdbc objs
			 try {
				 if(rs!=null)
					 rs.close();
			 }
			 catch(SQLException se) {
				 se.printStackTrace();
			 }
			 try {
				 if(ps!=null)
					 ps.close();
			 }
			 catch(SQLException se) {
				 se.printStackTrace();
			 }
			 
			 try {
				 if(con!=null)
					 con.close();
			 }
			 catch(SQLException se) {
				 se.printStackTrace();
			 }
		 }//finally
		 return listBO;
	}//method
}//class
