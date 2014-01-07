package com.estate.entity;

import java.util.Date;

/**
 * Charge entity. @author MyEclipse Persistence Tools
 */

public class Charge implements java.io.Serializable {

	// Fields

	private Integer chargeId;
	private Charstandard charstandard;
	private House house;
	private double chargeAll;
	private Date chargeDate;
	private String chargeWay;
	private String chargeState;
	private Date chargeInput;
	private double chargeUse;
	private double chargeRest;

	// Constructors

	/** default constructor */
	public Charge() {
	}

	/** minimal constructor */
	public Charge(Charstandard charstandard, House house, double chargeAll,
			String chargeWay, String chargeState, Date chargeInput,
			double chargeUse, double chargeRest) {
		this.charstandard = charstandard;
		this.house = house;
		this.chargeAll = chargeAll;
		this.chargeWay = chargeWay;
		this.chargeState = chargeState;
		this.chargeInput = chargeInput;
		this.chargeUse = chargeUse;
		this.chargeRest = chargeRest;
	}

	/** full constructor */
	public Charge(Charstandard charstandard, House house, double chargeAll,
			Date chargeDate, String chargeWay, String chargeState,
			Date chargeInput, double chargeUse, double chargeRest) {
		this.charstandard = charstandard;
		this.house = house;
		this.chargeAll = chargeAll;
		this.chargeDate = chargeDate;
		this.chargeWay = chargeWay;
		this.chargeState = chargeState;
		this.chargeInput = chargeInput;
		this.chargeUse = chargeUse;
		this.chargeRest = chargeRest;
	}

	// Property accessors

	public Integer getChargeId() {
		return this.chargeId;
	}

	public void setChargeId(Integer chargeId) {
		this.chargeId = chargeId;
	}

	public Charstandard getCharstandard() {
		return this.charstandard;
	}

	public void setCharstandard(Charstandard charstandard) {
		this.charstandard = charstandard;
	}

	public House getHouse() {
		return this.house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public double getChargeAll() {
		return this.chargeAll;
	}

	public void setChargeAll(double chargeAll) {
		this.chargeAll = chargeAll;
	}

	public Date getChargeDate() {
		return this.chargeDate;
	}

	public void setChargeDate(Date chargeDate) {
		this.chargeDate = chargeDate;
	}

	public String getChargeWay() {
		return this.chargeWay;
	}

	public void setChargeWay(String chargeWay) {
		this.chargeWay = chargeWay;
	}

	public String getChargeState() {
		return this.chargeState;
	}

	public void setChargeState(String chargeState) {
		this.chargeState = chargeState;
	}

	public Date getChargeInput() {
		return this.chargeInput;
	}

	public void setChargeInput(Date chargeInput) {
		this.chargeInput = chargeInput;
	}

	public double getChargeUse() {
		return this.chargeUse;
	}

	public void setChargeUse(double chargeUse) {
		this.chargeUse = chargeUse;
	}

	public double getChargeRest() {
		return this.chargeRest;
	}

	public void setChargeRest(double chargeRest) {
		this.chargeRest = chargeRest;
	}

}