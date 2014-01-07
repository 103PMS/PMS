package com.estate.dao.impl;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.estate.dao.IBaseHibernateDao;


/**
 * Data access object (DAO) for domain model
 * @author MyEclipse Persistence Tools
 * hibernatÄ£¿é
 */
public class BaseHibernateDao implements IBaseHibernateDao {
	
	@Resource(name="hibernateTemplate")
	private HibernateTemplate  hibernateTemplate;
	
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}




	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}




	public Session getSession() 
	{
		Session session = hibernateTemplate.getSessionFactory().openSession();
		return session;
	}
}