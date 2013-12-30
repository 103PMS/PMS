package com.estate.dao;

import java.util.List;

import com.estate.entity.Department;
import com.estate.entity.User;

/**
 * IDepartDao½Ó¿Ú
 * @author LYH
 *
 */

public interface IDepartDao {

	public List<Department> getDeptList();

	public void departSave(Department department);

	public Department findById(int id);

	public List<User> getUserList();

	public void delDepart(String[] idStr);

}
