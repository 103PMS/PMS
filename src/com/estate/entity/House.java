package com.estate.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * House entity. @author MyEclipse Persistence Tools
 */

public class House implements java.io.Serializable {

	// Fields

	private String houseId;
	private Ammeter ammeter;
	private Watermeter watermeter;
	private String houseName;
	private double houseArea;
	private double bulidArea;
	private double greenArea;
	private String houseSell;
	private Set comps = new HashSet(0);
	private Set maintains = new HashSet(0);
	private Set residents = new HashSet(0);
	private Set charges = new HashSet(0);

	// Constructors

	/** default constructor */
	public House() {
	}

	/** minimal constructor */
	public House(String houseName, double houseArea, double bulidArea,
			double greenArea, String houseSell) {
		this.houseName = houseName;
		this.houseArea = houseArea;
		this.bulidArea = bulidArea;
		this.greenArea = greenArea;
		this.houseSell = houseSell;
	}

	/** full constructor */
	public House(Ammeter ammeter, Watermeter watermeter, String houseName,
			double houseArea, double bulidArea, double greenArea,
			String houseSell, Set comps, Set maintains, Set residents,
			Set charges) {
		this.ammeter = ammeter;
		this.watermeter = watermeter;
		this.houseName = houseName;
		this.houseArea = houseArea;
		this.bulidArea = bulidArea;
		this.greenArea = greenArea;
		this.houseSell = houseSell;
		this.comps = comps;
		this.maintains = maintains;
		this.residents = residents;
		this.charges = charges;
	}

	// Property accessors

	public String getHouseId() {
		return this.houseId;
	}

	public void setHouseId(String houseId) {
		this.houseId = houseId;
	}

	public Ammeter getAmmeter() {
		return this.ammeter;
	}

	public void setAmmeter(Ammeter ammeter) {
		this.ammeter = ammeter;
	}

	public Watermeter getWatermeter() {
		return this.watermeter;
	}

	public void setWatermeter(Watermeter watermeter) {
		this.watermeter = watermeter;
	}

	public String getHouseName() {
		return this.houseName;
	}

	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}

	public double getHouseArea() {
		return this.houseArea;
	}

	public void setHouseArea(double houseArea) {
		this.houseArea = houseArea;
	}

	public double getBulidArea() {
		return this.bulidArea;
	}

	public void setBulidArea(double bulidArea) {
		this.bulidArea = bulidArea;
	}

	public double getGreenArea() {
		return this.greenArea;
	}

	public void setGreenArea(double greenArea) {
		this.greenArea = greenArea;
	}

	public String getHouseSell() {
		return this.houseSell;
	}

	public void setHouseSell(String houseSell) {
		this.houseSell = houseSell;
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

	public Set getResidents() {
		return this.residents;
	}

	public void setResidents(Set residents) {
		this.residents = residents;
	}

	public Set getCharges() {
		return this.charges;
	}

	public void setCharges(Set charges) {
		this.charges = charges;
	}

}