package com.hidayath.spring.dao;

import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.hidayath.spring.model.Book;

/**
 * 
 * @author h.abdulhameed
 *
 * All Book entity related queries are handled here.
 */
@Repository
public class BookDAOImpl implements IBookDAO {
	
	private static Logger logger = Logger.getLogger(BookDAOImpl.class);
	
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public BookDAOImpl() {
		
	}
	
	public BookDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@Transactional
	public List<Book> list() {
		logger.debug("SessionFactory is *******"+sessionFactory);
		@SuppressWarnings("unchecked")
		List<Book> listBook = (List<Book>) sessionFactory.getCurrentSession()
				.createCriteria(Book.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listBook;
	}

	@Override
	@Transactional
	public void saveOrUpdate(Book book) {
		sessionFactory.getCurrentSession().saveOrUpdate(book);
	}

	@Override
	@Transactional
	public void delete(int id) {
		Book bookToDelete = new Book();
		bookToDelete.setBookId(id);
		sessionFactory.getCurrentSession().delete(bookToDelete);
	}

	@Override
	@Transactional
	public Book getById(int id) {
		String hql = "from Book where id=" + id;
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Book> listBook = (List<Book>) query.list();
		
		if (listBook != null && !listBook.isEmpty()) {
			return listBook.get(0);
		}
		
		return null;
	}
	
	@Override
	@Transactional
	public Book getByISBN(String isbn) {
		String hql = "from Book where bookISBN like '"+ isbn+"'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		System.out.println("Query is "+ query +"Query list size is "+query.list().size());
		
		if(query != null && query.list().size() > 0) {
			@SuppressWarnings("unchecked")
			List<Book> listBook = (List<Book>) query.list();
			
			if (listBook != null && !listBook.isEmpty()) {
				return listBook.get(0);
			}
		}
		return null;
	}
}