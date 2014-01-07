package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * Ammeter entity. @author MyEclipse Persistence Tools
 */

public class Ammeter implements java.io.Serializable {

	// Fields

	private Integer ammeterId;
	private String ammeterNumber;
	private Set houses = new HashSet(0);

	// Constructors

	/** default constructor */
	public Ammeter() {
	}

	/** full constructor */
	public Ammeter(String ammeterNumber, Set houses) {
		this.ammeterNumber = ammeterNumber;
		this.houses = houses;
	}

	// Property accessors

	public Integer getAmmeterId() {
		return this.ammeterId;
	}

	public void setAmmeterId(Integer ammeterId) {
		this.ammeterId = ammeterId;
	}

	public String getAmmeterNumber() {
		return this.ammeterNumber;
	}

	public void setAmmeterNumber(String ammeterNumber) {
		this.ammeterNumber = ammeterNumber;
	}

	public Set getHouses() {
		return this.houses;
	}

	public void setHouses(Set houses) {
		this.houses = houses;
	}

}