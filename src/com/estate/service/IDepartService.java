package com.estate.service;

import java.util.List;

import com.estate.entity.Depart;
import com.estate.entity.User;

/**
 * departServcie½Ó¿Ú
 * @author LYH
 *
 */

public interface IDepartService {

	public List<Depart> getDeptList();

	public void departSave(Depart department);

	public Depart findById(int id);

	public List<User> userList();

	public void delDepart(String[] idStr);

}
