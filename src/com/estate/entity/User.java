package com.estate.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer userId;
	private Depart depart;
	private Profession profession;
	private String userName;
	private String userPassword;
	private String userPhone;
	private String userEmail;
	private Date userBirthday;
	private String userGender;
	private String userPosition;
	private Set maintains = new HashSet(0);
	private Set comps = new HashSet(0);
	private Set departs = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String userName, String userPassword) {
		this.userName = userName;
		this.userPassword = userPassword;
	}

	/** full constructor */
	public User(Depart depart, Profession profession, String userName,
			String userPassword, String userPhone, String userEmail,
			Date userBirthday, String userGender, String userPosition,
			Set maintains, Set comps, Set departs) {
		this.depart = depart;
		this.profession = profession;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userBirthday = userBirthday;
		this.userGender = userGender;
		this.userPosition = userPosition;
		this.maintains = maintains;
		this.comps = comps;
		this.departs = departs;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Depart getDepart() {
		return this.depart;
	}

	public void setDepart(Depart depart) {
		this.depart = depart;
	}

	public Profession getProfession() {
		return this.profession;
	}

	public void setProfession(Profession profession) {
		this.profession = profession;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserPhone() {
		return this.userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Date getUserBirthday() {
		return this.userBirthday;
	}

	public void setUserBirthday(Date userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getUserGender() {
		return this.userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserPosition() {
		return this.userPosition;
	}

	public void setUserPosition(String userPosition) {
		this.userPosition = userPosition;
	}

	public Set getMaintains() {
		return this.maintains;
	}

	public void setMaintains(Set maintains) {
		this.maintains = maintains;
	}

	public Set getComps() {
		return this.comps;
	}

	public void setComps(Set comps) {
		this.comps = comps;
	}

	public Set getDeparts() {
		return this.departs;
	}

	public void setDeparts(Set departs) {
		this.departs = departs;
	}

}