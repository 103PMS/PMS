package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Depart entity. @author MyEclipse Persistence Tools
 */

public class Depart implements java.io.Serializable {

	// Fields

	private Integer departId;
	private User user;
	private String departName;
	private String departPhone;
	private String departInformation;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Depart() {
	}

	/** minimal constructor */
	public Depart(String departName) {
		this.departName = departName;
	}

	/** full constructor */
	public Depart(User user, String departName, String departPhone,
			String departInformation, Set users) {
		this.user = user;
		this.departName = departName;
		this.departPhone = departPhone;
		this.departInformation = departInformation;
		this.users = users;
	}

	// Property accessors

	public Integer getDepartId() {
		return this.departId;
	}

	public void setDepartId(Integer departId) {
		this.departId = departId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDepartName() {
		return this.departName;
	}

	public void setDepartName(String departName) {
		this.departName = departName;
	}

	public String getDepartPhone() {
		return this.departPhone;
	}

	public void setDepartPhone(String departPhone) {
		this.departPhone = departPhone;
	}

	public String getDepartInformation() {
		return this.departInformation;
	}

	public void setDepartInformation(String departInformation) {
		this.departInformation = departInformation;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}