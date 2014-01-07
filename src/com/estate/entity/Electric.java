package com.estate.entity;

import java.util.Date;

/**
 * Electric entity. @author MyEclipse Persistence Tools
 */

public class Electric implements java.io.Serializable {

	// Fields

	private Integer elecId;
	private Charstandard charstandard;
	private double elecLast;
	private double elecThis;
	private double allElec;
	private Date elecDate;

	// Constructors

	/** default constructor */
	public Electric() {
	}

	/** full constructor */
	public Electric(Charstandard charstandard, double elecLast,
			double elecThis, double allElec, Date elecDate) {
		this.charstandard = charstandard;
		this.elecLast = elecLast;
		this.elecThis = elecThis;
		this.allElec = allElec;
		this.elecDate = elecDate;
	}

	// Property accessors

	public Integer getElecId() {
		return this.elecId;
	}

	public void setElecId(Integer elecId) {
		this.elecId = elecId;
	}

	public Charstandard getCharstandard() {
		return this.charstandard;
	}

	public void setCharstandard(Charstandard charstandard) {
		this.charstandard = charstandard;
	}

	public double getElecLast() {
		return this.elecLast;
	}

	public void setElecLast(double elecLast) {
		this.elecLast = elecLast;
	}

	public double getElecThis() {
		return this.elecThis;
	}

	public void setElecThis(double elecThis) {
		this.elecThis = elecThis;
	}

	public double getAllElec() {
		return this.allElec;
	}

	public void setAllElec(double allElec) {
		this.allElec = allElec;
	}

	public Date getElecDate() {
		return this.elecDate;
	}

	public void setElecDate(Date elecDate) {
		this.elecDate = elecDate;
	}

}