package com.estate.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.estate.dao.IDepartDao;
import com.estate.entity.Department;
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
	public List<Department> getDeptList() {
		//hql语句
		String hql ="from Department depart inner join fetch depart.user";
		//使用Hibernate模板
		List<Department> deptList = this.getHibernateTemplate().find(hql);
		//返回部门列表
		return deptList;
	}

	/**
	 * 添加保存部门信息
	 */
	public void departSave(Department department) {
		this.getHibernateTemplate().saveOrUpdate(department);
	}

	/**
	 * 根据Id查找部门
	 */
	public Department findById(int id) {
		//获取会话
		Session session = this.getSession();
		//开始事务
		Transaction ts = session.beginTransaction();
		//hql语句
		String hql ="from Department depart inner join fetch depart.user where depart.depart_id = '"+id+"'";
		//执行hql语句
		Query query = session.createQuery(hql);
		Department department = (Department) query.uniqueResult();
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
			
			String  hql = "delete from Department where depart_id = '"+id+"'";
			
			Query query = session.createQuery(hql);
			
			query.executeUpdate();
		}
		ts.commit();
		session.close();
	}

}
