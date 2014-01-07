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
 * IDepartDao接口实现
 * @author LYH
 *
 */

//Spring注解
@Repository("iDepartDao")
public class DepartDaoImpl extends BaseHibernateDao implements IDepartDao{

	/**
	 * 获取部门列表
	 */
	public List<Depart> getDeptList() {
		//hql语句
		String hql ="from Depart depart inner join fetch depart.user";
		//使用Hibernate模板
		List<Depart> deptList = this.getHibernateTemplate().find(hql);
		//返回部门列表
		return deptList;
	}

	/**
	 * 添加保存部门信息
	 */
	public void departSave(Depart department) {
		this.getHibernateTemplate().saveOrUpdate(department);
	}

	/**
	 * 根据Id查找部门
	 */
	public Depart findById(int id) {
		//获取会话
		Session session = this.getSession();
		//开始事务
		Transaction ts = session.beginTransaction();
		//hql语句
		String hql ="from Depart depart inner join fetch depart.user where depart.departId = '"+id+"'";
		//执行hql语句
		Query query = session.createQuery(hql);
		Depart department = (Depart) query.uniqueResult();
		//提交事务
		ts.commit();
		//关闭会话
		session.close();
		//返回对象
		return department;
	}

	/**
	 * 获取用户信息
	 */
	public List<User> getUserList() {
		String hql = "from User";
		List<User> userList = this.getHibernateTemplate().find(hql);
		return userList;
	}

	/**
	 * 删除部门
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
