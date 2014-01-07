package com.estate.entity;

import java.util.Date;

/**
 * Water entity. @author MyEclipse Persistence Tools
 */

public class Water implements java.io.Serializable {

	// Fields

	private Integer waterId;
	private Charstandard charstandard;
	private double waterLast;
	private double waterThis;
	private double allWater;
	private Date waterDate;

	// Constructors

	/** default constructor */
	public Water() {
	}

	/** full constructor */
	public Water(Charstandard charstandard, double waterLast, double waterThis,
			double allWater, Date waterDate) {
		this.charstandard = charstandard;
		this.waterLast = waterLast;
		this.waterThis = waterThis;
		this.allWater = allWater;
		this.waterDate = waterDate;
	}

	// Property accessors

	public Integer getWaterId() {
		return this.waterId;
	}

	public void setWaterId(Integer waterId) {
		this.waterId = waterId;
	}

	public Charstandard getCharstandard() {
		return this.charstandard;
	}

	public void setCharstandard(Charstandard charstandard) {
		this.charstandard = charstandard;
	}

	public double getWaterLast() {
		return this.waterLast;
	}

	public void setWaterLast(double waterLast) {
		this.waterLast = waterLast;
	}

	public double getWaterThis() {
		return this.waterThis;
	}

	public void setWaterThis(double waterThis) {
		this.waterThis = waterThis;
	}

	public double getAllWater() {
		return this.allWater;
	}

	public void setAllWater(double allWater) {
		this.allWater = allWater;
	}

	public Date getWaterDate() {
		return this.waterDate;
	}

	public void setWaterDate(Date waterDate) {
		this.waterDate = waterDate;
	}

}