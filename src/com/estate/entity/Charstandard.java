package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Charstandard entity. @author MyEclipse Persistence Tools
 */

public class Charstandard implements java.io.Serializable {

	// Fields

	private Integer charstandId;
	private String charstandName;
	private double charstandPrice;
	private String charstandWays;
	private String charstandDepart;
	private Integer charstandCycle;
	private Set electrics = new HashSet(0);
	private Set waters = new HashSet(0);
	private Set charges = new HashSet(0);

	// Constructors

	/** default constructor */
	public Charstandard() {
	}

	/** minimal constructor */
	public Charstandard(String charstandName, double charstandPrice,
			String charstandWays, String charstandDepart, Integer charstandCycle) {
		this.charstandName = charstandName;
		this.charstandPrice = charstandPrice;
		this.charstandWays = charstandWays;
		this.charstandDepart = charstandDepart;
		this.charstandCycle = charstandCycle;
	}

	/** full constructor */
	public Charstandard(String charstandName, double charstandPrice,
			String charstandWays, String charstandDepart,
			Integer charstandCycle, Set electrics, Set waters, Set charges) {
		this.charstandName = charstandName;
		this.charstandPrice = charstandPrice;
		this.charstandWays = charstandWays;
		this.charstandDepart = charstandDepart;
		this.charstandCycle = charstandCycle;
		this.electrics = electrics;
		this.waters = waters;
		this.charges = charges;
	}

	// Property accessors

	public Integer getCharstandId() {
		return this.charstandId;
	}

	public void setCharstandId(Integer charstandId) {
		this.charstandId = charstandId;
	}

	public String getCharstandName() {
		return this.charstandName;
	}

	public void setCharstandName(String charstandName) {
		this.charstandName = charstandName;
	}

	public double getCharstandPrice() {
		return this.charstandPrice;
	}

	public void setCharstandPrice(double charstandPrice) {
		this.charstandPrice = charstandPrice;
	}

	public String getCharstandWays() {
		return this.charstandWays;
	}

	public void setCharstandWays(String charstandWays) {
		this.charstandWays = charstandWays;
	}

	public String getCharstandDepart() {
		return this.charstandDepart;
	}

	public void setCharstandDepart(String charstandDepart) {
		this.charstandDepart = charstandDepart;
	}

	public Integer getCharstandCycle() {
		return this.charstandCycle;
	}

	public void setCharstandCycle(Integer charstandCycle) {
		this.charstandCycle = charstandCycle;
	}

	public Set getElectrics() {
		return this.electrics;
	}

	public void setElectrics(Set electrics) {
		this.electrics = electrics;
	}

	public Set getWaters() {
		return this.waters;
	}

	public void setWaters(Set waters) {
		this.waters = waters;
	}

	public Set getCharges() {
		return this.charges;
	}

	public void setCharges(Set charges) {
		this.charges = charges;
	}

}