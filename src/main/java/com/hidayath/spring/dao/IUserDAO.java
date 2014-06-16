package com.hidayath.spring.dao;

import java.util.List;

import com.hidayath.spring.model.User;


public interface IUserDAO {
	
	public List<User> list();
	
	public User get(int id);
	
	public void saveOrUpdate(User user);
	
	public void delete(int id);
}