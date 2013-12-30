package com.estate.service;

import java.util.List;

import com.estate.entity.Department;
import com.estate.entity.User;

/**
 * departServcie½Ó¿Ú
 * @author LYH
 *
 */

public interface IDepartService {

	public List<Department> getDeptList();

	public void departSave(Department department);

	public Department findById(int id);

	public List<User> userList();

	public void delDepart(String[] idStr);

}
