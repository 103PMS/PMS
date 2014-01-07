package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Watermeter entity. @author MyEclipse Persistence Tools
 */

public class Watermeter implements java.io.Serializable {

	// Fields

	private Integer watermeterId;
	private String watermeterNumber;
	private Set houses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Watermeter() {
	}

	/** full constructor */
	public Watermeter(String watermeterNumber, Set houses) {
		this.watermeterNumber = watermeterNumber;
		this.houses = houses;
	}

	// Property accessors

	public Integer getWatermeterId() {
		return this.watermeterId;
	}

	public void setWatermeterId(Integer watermeterId) {
		this.watermeterId = watermeterId;
	}

	public String getWatermeterNumber() {
		return this.watermeterNumber;
	}

	public void setWatermeterNumber(String watermeterNumber) {
		this.watermeterNumber = watermeterNumber;
	}

	public Set getHouses() {
		return this.houses;
	}

	public void setHouses(Set houses) {
		this.houses = houses;
	}

}