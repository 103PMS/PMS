package com.estate.entity;

import java.util.Date;

/**
 * Maintain entity. @author MyEclipse Persistence Tools
 */

public class Maintain implements java.io.Serializable {

	// Fields

	private Integer maintainId;
	private User user;
	private House house;
	private Resident resident;
	private String maintainTheme;
	private String maintainContent;
	private Date maintainDate;
	private String maintainState;
	private double serviceCharge;
	private double meterialCharge;
	private Date solyeDate;
	private double allcharge;
	private String maintainSolve;

	// Constructors

	/** default constructor */
	public Maintain() {
	}

	/** minimal constructor */
	public Maintain(User user, House house, Resident resident,
			String maintainTheme, String maintainContent, double serviceCharge,
			double meterialCharge, Date solyeDate, double allcharge,
			String maintainSolve) {
		this.user = user;
		this.house = house;
		this.resident = resident;
		this.maintainTheme = maintainTheme;
		this.maintainContent = maintainContent;
		this.serviceCharge = serviceCharge;
		this.meterialCharge = meterialCharge;
		this.solyeDate = solyeDate;
		this.allcharge = allcharge;
		this.maintainSolve = maintainSolve;
	}

	/** full constructor */
	public Maintain(User user, House house, Resident resident,
			String maintainTheme, String maintainContent, Date maintainDate,
			String maintainState, double serviceCharge, double meterialCharge,
			Date solyeDate, double allcharge, String maintainSolve) {
		this.user = user;
		this.house = house;
		this.resident = resident;
		this.maintainTheme = maintainTheme;
		this.maintainContent = maintainContent;
		this.maintainDate = maintainDate;
		this.maintainState = maintainState;
		this.serviceCharge = serviceCharge;
		this.meterialCharge = meterialCharge;
		this.solyeDate = solyeDate;
		this.allcharge = allcharge;
		this.maintainSolve = maintainSolve;
	}

	// Property accessors

	public Integer getMaintainId() {
		return this.maintainId;
	}

	public void setMaintainId(Integer maintainId) {
		this.maintainId = maintainId;
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

	public String getMaintainTheme() {
		return this.maintainTheme;
	}

	public void setMaintainTheme(String maintainTheme) {
		this.maintainTheme = maintainTheme;
	}

	public String getMaintainContent() {
		return this.maintainContent;
	}

	public void setMaintainContent(String maintainContent) {
		this.maintainContent = maintainContent;
	}

	public Date getMaintainDate() {
		return this.maintainDate;
	}

	public void setMaintainDate(Date maintainDate) {
		this.maintainDate = maintainDate;
	}

	public String getMaintainState() {
		return this.maintainState;
	}

	public void setMaintainState(String maintainState) {
		this.maintainState = maintainState;
	}

	public double getServiceCharge() {
		return this.serviceCharge;
	}

	public void setServiceCharge(double serviceCharge) {
		this.serviceCharge = serviceCharge;
	}

	public double getMeterialCharge() {
		return this.meterialCharge;
	}

	public void setMeterialCharge(double meterialCharge) {
		this.meterialCharge = meterialCharge;
	}

	public Date getSolyeDate() {
		return this.solyeDate;
	}

	public void setSolyeDate(Date solyeDate) {
		this.solyeDate = solyeDate;
	}

	public double getAllcharge() {
		return this.allcharge;
	}

	public void setAllcharge(double allcharge) {
		this.allcharge = allcharge;
	}

	public String getMaintainSolve() {
		return this.maintainSolve;
	}

	public void setMaintainSolve(String maintainSolve) {
		this.maintainSolve = maintainSolve;
	}

}