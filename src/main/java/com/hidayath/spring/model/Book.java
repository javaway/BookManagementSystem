package com.hidayath.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author h.abdulhameed
 * Book Entity
 */
@Entity
@Table(name = "BOOKS")
public class Book {

	private int bookId;
	private String bookName;
	private String bookISBN;
	private String description;
	/**
	 * @return the bookId
	 */
	@Id
	@GeneratedValue
	@Column(name = "BOOK_ID")
	public int getBookId() {
		return bookId;
	}
	/**
	 * @param bookId the bookId to set
	 */
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	/**
	 * @return the bookName
	 */
	public String getBookName() {
		return bookName;
	}
	/**
	 * @param bookName the bookName to set
	 */
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	/**
	 * @return the bookISBN
	 */
	public String getBookISBN() {
		return bookISBN;
	}
	/**
	 * @param bookISBN the bookISBN to set
	 */
	public void setBookISBN(String bookISBN) {
		this.bookISBN = bookISBN;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

}
