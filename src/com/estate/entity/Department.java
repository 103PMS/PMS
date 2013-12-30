package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * 部门实体类
 * @author LYH
 *
 */

public class Department {
	private Integer depart_id;//部门id
	private String depart_name;//部门名称
	private User user;//部门负责人
	private String depart_phone;//部门电话
	private String depart_information;//部门信息描述
	
	private Set users = new HashSet(0);
	
	
	public Integer getDepart_id() {
		return depart_id;
	}
	public void setDepart_id(Integer depart_id) {
		this.depart_id = depart_id;
	}
	public String getDepart_name() {
		return depart_name;
	}
	public void setDepart_name(String depart_name) {
		this.depart_name = depart_name;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getDepart_phone() {
		return depart_phone;
	}
	public void setDepart_phone(String depart_phone) {
		this.depart_phone = depart_phone;
	}
	public String getDepart_information() {
		return depart_information;
	}
	public void setDepart_information(String depart_information) {
		this.depart_information = depart_information;
	}
	public Set getUsers() {
		return users;
	}
	public void setUsers(Set users) {
		this.users = users;
	}
	
	

}
