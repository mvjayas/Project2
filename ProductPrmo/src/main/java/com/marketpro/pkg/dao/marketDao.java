package com.marketpro.pkg.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.marketpro.pkg.user;
@Component
public class marketDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void updateDB(user usr)
	{
	System.out.print("Inside the marketDAO" + usr);
	
	//let the spring create the object
	Session session = sessionFactory.getCurrentSession();
	
	session.save(usr);
	}
}

