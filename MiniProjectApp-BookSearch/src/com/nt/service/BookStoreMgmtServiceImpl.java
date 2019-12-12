package com.nt.service;

import java.util.ArrayList;
import java.util.List;

import com.nt.bo.BookBO;
import com.nt.dao.BookStoreDAO;
import com.nt.dao.BookStoreDAOImpl;
import com.nt.dto.BookDTO;

public class BookStoreMgmtServiceImpl implements BookStoreMgmtService {
	private BookStoreDAO dao=null;
	public BookStoreMgmtServiceImpl() {
		dao=new BookStoreDAOImpl();
	}

	@Override
	public List<BookDTO> searchBooksByCategory(String[] categories) throws Exception{
		List<BookBO> listBO=null;
		List<BookDTO> listDTO=new ArrayList();
		//use DAO
		listBO=dao.findBooks(categories);
		//convert listBO to listDTO
         listBO.forEach(bo->{
        	 //copy Each BO class obj to each DTO class object
        	BookDTO dto=new BookDTO();
        	dto.setBookId(bo.getBookId());
        	dto.setBookName(bo.getBookName());
        	dto.setCategory(bo.getCategory());
        	dto.setPrice(bo.getPrice());
        	dto.setPublisher(bo.getPublisher());
        	dto.setAuthorName(bo.getAuthorName());
        	dto.setStatus(bo.getStatus());
        	dto.setSrNo(listDTO.size()+1);
        	//add  Each DTO class object listDTO
        	listDTO.add(dto);
         });		
		return listDTO;
	}//method
}//class
