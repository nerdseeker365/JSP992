package com.nt.service;

import java.util.List;

import com.nt.dto.BookDTO;

public interface BookStoreMgmtService {
	
	public List<BookDTO> searchBooksByCategory(String categories[])throws Exception;

}
