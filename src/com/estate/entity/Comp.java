package com.estate.entity;

import java.util.Date;

/**
 * Comp entity. @author MyEclipse Persistence Tools
 */

public class Comp implements java.io.Serializable {

	// Fields

	private Integer compId;
	private User user;
	private House house;
	private Resident resident;
	private String comCheme;
	private String comContent;
	private Date comDate;
	private String compState;
	private String comSolye;
	private Date comSolvedat;

	// Constructors

	/** default constructor */
	public Comp() {
	}

	/** minimal constructor */
	public Comp(User user, House house, Resident resident, String compState,
			String comSolye, Date comSolvedat) {
		this.user = user;
		this.house = house;
		this.resident = resident;
		this.compState = compState;
		this.comSolye = comSolye;
		this.comSolvedat = comSolvedat;
	}

	/** full constructor */
	public Comp(User user, House house, Resident resident, String comCheme,
			String comContent, Date comDate, String compState, String comSolye,
			Date comSolvedat) {
		this.user = user;
		this.house = house;
		this.resident = resident;
		this.comCheme = comCheme;
		this.comContent = comContent;
		this.comDate = comDate;
		this.compState = compState;
		this.comSolye = comSolye;
		this.comSolvedat = comSolvedat;
	}

	// Property accessors

	public Integer getCompId() {
		return this.compId;
	}

	public void setCompId(Integer compId) {
		this.compId = compId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public House getHouse() {
		return this.house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public Resident getResident() {
		return this.resident;
	}

	public void setResident(Resident resident) {
		this.resident = resident;
	}

	public String getComCheme() {
		return this.comCheme;
	}

	public void setComCheme(String comCheme) {
		this.comCheme = comCheme;
	}

	public String getComContent() {
		return this.comContent;
	}

	public void setComContent(String comContent) {
		this.comContent = comContent;
	}

	public Date getComDate() {
		return this.comDate;
	}

	public void setComDate(Date comDate) {
		this.comDate = comDate;
	}

	public String getCompState() {
		return this.compState;
	}

	public void setCompState(String compState) {
		this.compState = compState;
	}

	public String getComSolye() {
		return this.comSolye;
	}

	public void setComSolye(String comSolye) {
		this.comSolye = comSolye;
	}

	public Date getComSolvedat() {
		return this.comSolvedat;
	}

	public void setComSolvedat(Date comSolvedat) {
		this.comSolvedat = comSolvedat;
	}

}