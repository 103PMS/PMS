package com.estate.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.estate.dao.IDepartDao;
import com.estate.entity.Depart;
import com.estate.entity.User;

/**
 * IDepartDao�ӿ�ʵ��
 * @author LYH
 *
 */

//Springע��
@Repository("iDepartDao")
public class DepartDaoImpl extends BaseHibernateDao implements IDepartDao{

	/**
	 * ��ȡ�����б�
	 */
	public List<Depart> getDeptList() {
		//hql���
		String hql ="from Depart depart inner join fetch depart.user";
		//ʹ��Hibernateģ��
		List<Depart> deptList = this.getHibernateTemplate().find(hql);
		//���ز����б�
		return deptList;
	}

	/**
	 * ��ӱ��沿����Ϣ
	 */
	public void departSave(Depart department) {
		this.getHibernateTemplate().saveOrUpdate(department);
	}

	/**
	 * ����Id���Ҳ���
	 */
	public Depart findById(int id) {
		//��ȡ�Ự
		Session session = this.getSession();
		//��ʼ����
		Transaction ts = session.beginTransaction();
		//hql���
		String hql ="from Depart depart inner join fetch depart.user where depart.departId = '"+id+"'";
		//ִ��hql���
		Query query = session.createQuery(hql);
		Depart department = (Depart) query.uniqueResult();
		//�ύ����
		ts.commit();
		//�رջỰ
		session.close();
		//���ض���
		return department;
	}

	/**
	 * ��ȡ�û���Ϣ
	 */
	public List<User> getUserList() {
		String hql = "from User";
		List<User> userList = this.getHibernateTemplate().find(hql);
		return userList;
	}

	/**
	 * ɾ������
	 */
	public void delDepart(String[] idStr) {
		Session session = this.getSession();
		Transaction ts = session.beginTransaction();
		
		for(int i = 0; i < idStr.length; i++){
			
			int id = Integer.valueOf(idStr[i]);
			
			String  hql = "delete from Depart where departId = '"+id+"'";
			
			Query query = session.createQuery(hql);
			
			query.executeUpdate();
		}
		ts.commit();
		session.close();
	}

}
