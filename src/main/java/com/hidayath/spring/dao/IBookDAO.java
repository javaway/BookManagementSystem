package com.hidayath.spring.dao;

import java.util.List;

import com.hidayath.spring.model.Book;


public interface IBookDAO {
	
	public List<Book> list();
	
	public void saveOrUpdate(Book book);
	
	public void delete(int id);
	
	public Book getById(int id);
	public Book getByISBN(String isbn);
}