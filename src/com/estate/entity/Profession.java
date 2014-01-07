package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Profession entity. @author MyEclipse Persistence Tools
 */

public class Profession implements java.io.Serializable {

	// Fields

	private Integer professionId;
	private String professionName;
	private Integer professionPower;
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public Profession() {
	}

	/** minimal constructor */
	public Profession(String professionName, Integer professionPower) {
		this.professionName = professionName;
		this.professionPower = professionPower;
	}

	/** full constructor */
	public Profession(String professionName, Integer professionPower, Set users) {
		this.professionName = professionName;
		this.professionPower = professionPower;
		this.users = users;
	}

	// Property accessors

	public Integer getProfessionId() {
		return this.professionId;
	}

	public void setProfessionId(Integer professionId) {
		this.professionId = professionId;
	}

	public String getProfessionName() {
		return this.professionName;
	}

	public void setProfessionName(String professionName) {
		this.professionName = professionName;
	}

	public Integer getProfessionPower() {
		return this.professionPower;
	}

	public void setProfessionPower(Integer professionPower) {
		this.professionPower = professionPower;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}