package com.estate.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * �û�ʵ����
 * @author LYH
 *
 */
public class User {
	
	private Integer user_id;//�û�id
	private String user_name;//�û�����
	private String user_gender;//�û��Ա�
	private Date user_birthday;//�û���������
	private String user_phone;//�û��绰����
	private String user_email;//�û�����
	private Department department;//�û���������
	private String user_position;//�û�ְλ
	
	private Set departments = new HashSet(0);


	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public Date getUser_birthday() {
		return user_birthday;
	}

	public void setUser_birthday(Date user_birthday) {
		this.user_birthday = user_birthday;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getUser_position() {
		return user_position;
	}

	public void setUser_position(String user_position) {
		this.user_position = user_position;
	}

	public Set getDepartments() {
		return departments;
	}

	public void setDepartments(Set departments) {
		this.departments = departments;
	}
	
	
	
	

}
