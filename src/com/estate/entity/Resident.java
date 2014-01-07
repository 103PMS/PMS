package com.estate.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Resident entity. @author MyEclipse Persistence Tools
 */

public class Resident implements java.io.Serializable {

	// Fields

	private Integer resId;
	private House house;
	private String resName;
	private String resGender;
	private String resPhone;
	private String resEmail;
	private Date resData;
	private String resIdentity;
	private String resOccupation;
	private String resPassword;
	private Set comps = new HashSet(0);
	private Set maintains = new HashSet(0);

	// Constructors

	/** default constructor */
	public Resident() {
	}

	/** minimal constructor */
	public Resident(House house, String resName, String resPhone,
			String resEmail, Date resData, String resIdentity,
			String resOccupation, String resPassword) {
		this.house = house;
		this.resName = resName;
		this.resPhone = resPhone;
		this.resEmail = resEmail;
		this.resData = resData;
		this.resIdentity = resIdentity;
		this.resOccupation = resOccupation;
		this.resPassword = resPassword;
	}

	/** full constructor */
	public Resident(House house, String resName, String resGender,
			String resPhone, String resEmail, Date resData, String resIdentity,
			String resOccupation, String resPassword, Set comps, Set maintains) {
		this.house = house;
		this.resName = resName;
		this.resGender = resGender;
		this.resPhone = resPhone;
		this.resEmail = resEmail;
		this.resData = resData;
		this.resIdentity = resIdentity;
		this.resOccupation = resOccupation;
		this.resPassword = resPassword;
		this.comps = comps;
		this.maintains = maintains;
	}

	// Property accessors

	public Integer getResId() {
		return this.resId;
	}

	public void setResId(Integer resId) {
		this.resId = resId;
	}

	public House getHouse() {
		return this.house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public String getResName() {
		return this.resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResGender() {
		return this.resGender;
	}

	public void setResGender(String resGender) {
		this.resGender = resGender;
	}

	public String getResPhone() {
		return this.resPhone;
	}

	public void setResPhone(String resPhone) {
		this.resPhone = resPhone;
	}

	public String getResEmail() {
		return this.resEmail;
	}

	public void setResEmail(String resEmail) {
		this.resEmail = resEmail;
	}

	public Date getResData() {
		return this.resData;
	}

	public void setResData(Date resData) {
		this.resData = resData;
	}

	public String getResIdentity() {
		return this.resIdentity;
	}

	public void setResIdentity(String resIdentity) {
		this.resIdentity = resIdentity;
	}

	public String getResOccupation() {
		return this.resOccupation;
	}

	public void setResOccupation(String resOccupation) {
		this.resOccupation = resOccupation;
	}

	public String getResPassword() {
		return this.resPassword;
	}

	public void setResPassword(String resPassword) {
		this.resPassword = resPassword;
	}

	public Set getComps() {
		return this.comps;
	}

	public void setComps(Set comps) {
		this.comps = comps;
	}

	public Set getMaintains() {
		return this.maintains;
	}

	public void setMaintains(Set maintains) {
		this.maintains = maintains;
	}

}