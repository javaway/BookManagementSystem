package com.hidayath.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.hidayath.spring.dao.IBookDAO;
import com.hidayath.spring.dao.IUserDAO;
import com.hidayath.spring.model.Book;
import com.hidayath.spring.model.User;

/**
 * 
 * @author h.abdulhameed
 * 
 * Root controller of the application, all request uri's are mapped to corressponding
 * model and views
 *
 */
@Controller
public class BMSRootController {
	
	private static Logger logger = Logger.getLogger(BMSRootController.class);
	
	@Autowired
	private IUserDAO userDao;
	
	@Autowired
	private IBookDAO bookDao;
	
	@RequestMapping(value="/index.jsp")
	public String welcome(ModelMap model) {
		System.out.print("*****");
		logger.debug("welcome page");
		return "index";
	}
 
	@RequestMapping(value="/welcome/{name}", method = RequestMethod.GET)
	public String welcomeName(@PathVariable String name, ModelMap model) {
		logger.debug("/welcome/ executed");
		model.addAttribute("message", "Maven Web Project + Spring 3 MVC - " + name);
		return "index";
 	}

	@RequestMapping(value = "/listUsers", method = RequestMethod.GET)
	public ModelAndView handleRequest() throws Exception {
		logger.debug("/listUsers  executed");
		List<User> listUsers = userDao.list();
		ModelAndView model = new ModelAndView("UserList");
		model.addObject("userList", listUsers);
		return model;
	}
	
	@RequestMapping(value = "/newUser", method = RequestMethod.GET)
	public ModelAndView newUser() {
		System.out.println("****************");
		logger.debug("/newUser executed");
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", new User());
		return model;		
	}
	
	@RequestMapping(value = "/editUser", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		logger.debug("/editUser executed");
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = userDao.get(userId);
		ModelAndView model = new ModelAndView("UserForpm");
		model.addObject("user", user);
		return model;		
	}
	
	@RequestMapping(value = "/deleteUser", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		logger.debug("/deleteUser executed");
		int userId = Integer.parseInt(request.getParameter("id"));
		userDao.delete(userId);
		return new ModelAndView("redirect:/listUsers");		
	}
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute User user) {
		logger.debug("/saveUser executed");
		userDao.saveOrUpdate(user);
		return new ModelAndView("redirect:/listUsers");
	}

	@RequestMapping(value = "/listBooks", method = RequestMethod.GET)
	public ModelAndView handleBookRequest() throws Exception {
		logger.debug("/listBooks executed");
		List<Book> listBooks = bookDao.list();
		ModelAndView model = new ModelAndView("BookList");
		model.addObject("bookList", listBooks);
		return model;
	}
	
	@RequestMapping(value = "/newBook", method = RequestMethod.GET)
	public ModelAndView newBook() {
		logger.debug("/newBook executed");
		ModelAndView model = new ModelAndView("BookForm");
		model.addObject("book", new Book());
		return model;		
	}
	
	@RequestMapping(value = "/saveBook", method = RequestMethod.POST)
	public ModelAndView saveBook(@ModelAttribute Book book) {
		logger.debug("/saveBook executed");
		bookDao.saveOrUpdate(book);
		return new ModelAndView("redirect:/listBooks");
	}
}
