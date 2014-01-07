package com.estate.dao;

import java.util.List;

import com.estate.entity.Depart;
import com.estate.entity.User;

/**
 * IDepartDao½Ó¿Ú
 * @author LYH
 *
 */

public interface IDepartDao {

	public List<Depart> getDeptList();

	public void departSave(Depart department);

	public Depart findById(int id);

	public List<User> getUserList();

	public void delDepart(String[] idStr);

}
