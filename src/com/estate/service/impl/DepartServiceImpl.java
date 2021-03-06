package com.estate.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.estate.dao.IDepartDao;
import com.estate.entity.Depart;
import com.estate.entity.User;
import com.estate.service.IDepartService;

/**
 * departServcie接口的实现
 * @author LYH
 *
 */

//Spring注解
@Service("iDepartService")
public class DepartServiceImpl implements IDepartService {

	//Spring注解
	@Resource(name="iDepartDao")
	private IDepartDao departDao;
	
	
	public List<Depart> getDeptList() {
		//调用Dao层的方法
		return departDao.getDeptList();
	}


	public void departSave(Depart department) {
		departDao.departSave(department);
		
	}


	public Depart findById(int id) {
		return departDao.findById(id);
	}


	public List<User> userList() {
		return departDao.getUserList();
	}


	public void delDepart(String[] idStr) {
		departDao.delDepart(idStr);
		
	}

}
