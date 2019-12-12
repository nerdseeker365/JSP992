package com.nt.bo;

import lombok.Data;

@Data
public class BookBO {
	private int bookId;
	private String bookName;
	private float price;
	private String authorName;
	private String publisher;
	private  String status;
	private  String category;

}
