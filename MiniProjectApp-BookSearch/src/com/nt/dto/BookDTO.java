package com.nt.dto;

import java.io.Serializable;

import lombok.Data;

@Data
public class BookDTO  implements Serializable{
	private int srNo;
	private int bookId;
	private String bookName;
	private float price;
	private String authorName;
	private String publisher;
	private  String status;
	private  String category;

}
