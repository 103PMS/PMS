package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * ����ʵ����
 * @author LYH
 *
 */

public class Department {
	private Integer depart_id;//����id
	private String depart_name;//��������
	private User user;//���Ÿ�����
	private String depart_phone;//���ŵ绰
	private String depart_information;//������Ϣ����
	
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
