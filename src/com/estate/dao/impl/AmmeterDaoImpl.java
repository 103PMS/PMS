package com.estate.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.estate.dao.IAmmeterDao;
import com.estate.entity.Ammeter;

@Repository("iAmmeterDao")
public class AmmeterDaoImpl extends BaseHibernateDao implements IAmmeterDao {

	public List<Ammeter> ammeterList() {

		String hql ="from Ammeter";
		List ammeterList = this.getHibernateTemplate().find(hql);
		return ammeterList;
	}
	
	

	public Ammeter findById(int id) {
		
		String hql = "from Ammeter where ammeterId='"+id+"'";
		
		List ammeterList = this.getHibernateTemplate().find(hql);
		
		if(ammeterList.size() > 0){
			Ammeter ammeter = (Ammeter) ammeterList.get(0);
			return ammeter;
		}
		return null;
	}



	public void ammeterSave(Ammeter ammeter) {
		this.getHibernateTemplate().saveOrUpdate(ammeter);
		
	}



	public void ammeterDelete(String[] idStr) {
		
		Session session =  this.getSession();
		
		Transaction ts = session.beginTransaction();
		
		for(int i = 0; i < idStr.length; i++){
			
			int id = Integer.parseInt(idStr[i]);
			
			String hql = "delete from Ammeter where ammeterId='"+id+"'";
			
			Query query =  session.createQuery(hql);
			
			query.executeUpdate();
		}
		
		
		ts.commit();
		session.close();
	}



}
