package com.om.model;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Om entity. @author MyEclipse Persistence Tools
 */

public class Om implements java.io.Serializable {

	// Fields

	private Integer omid;
	private String omName;
	private String omDes;
	private String omLogoUrl;
	private String omCity;
	private String omCounty;
	private String omProvince;
	private String omLocation;
	private Timestamp omCreatetime;
	private Integer omMoney;
	private String omBank;
	private Integer headcount;
	private Set users = new HashSet(0);
	private Set logs = new HashSet(0);
	private Set purchases = new HashSet(0);
	private Set bills = new HashSet(0);

	// Constructors

	/** default constructor */
	public Om() {
	}

	/** minimal constructor */
	public Om(String omName, Timestamp omCreatetime, Integer headcount) {
		this.omName = omName;
		this.omCreatetime = omCreatetime;
		this.headcount = headcount;
	}

	/** full constructor */
	public Om(String omName, String omDes, String omLogoUrl, String omCity,
			String omCounty, String omProvince, String omLocation,
			Timestamp omCreatetime, Integer omMoney, String omBank,
			Integer headcount, Set users, Set logs, Set purchases, Set bills) {
		this.omName = omName;
		this.omDes = omDes;
		this.omLogoUrl = omLogoUrl;
		this.omCity = omCity;
		this.omCounty = omCounty;
		this.omProvince = omProvince;
		this.omLocation = omLocation;
		this.omCreatetime = omCreatetime;
		this.omMoney = omMoney;
		this.omBank = omBank;
		this.headcount = headcount;
		this.users = users;
		this.logs = logs;
		this.purchases = purchases;
		this.bills = bills;
	}

	// Property accessors

	public Om(Om om) {
		this.omCity = om.omCity;
		this.omCounty = om.omCounty;
		this.omProvince = om.omProvince;
		this.omName = om.omName;
		this.omDes = om.omDes;
		this.omLogoUrl = om.omLogoUrl;
		this.omLocation = om.omLocation;
		this.omCreatetime = om.omCreatetime;
		this.omMoney =om. omMoney;
		this.omBank =om. omBank;
		this.headcount = om.headcount;
		this.users = om.users;
		this.logs = om.logs;
		this.purchases =om. purchases;
		this.bills = om.bills;
	}

	public Integer getOmid() {
		return this.omid;
	}

	public void setOmid(Integer omid) {
		this.omid = omid;
	}

	public String getOmName() {
		return this.omName;
	}

	public void setOmName(String omName) {
		this.omName = omName;
	}

	public String getOmDes() {
		return this.omDes;
	}

	public void setOmDes(String omDes) {
		this.omDes = omDes;
	}

	public String getOmLogoUrl() {
		return this.omLogoUrl;
	}

	public void setOmLogoUrl(String omLogoUrl) {
		this.omLogoUrl = omLogoUrl;
	}

	public String getOmCity() {
		return this.omCity;
	}

	public void setOmCity(String omCity) {
		this.omCity = omCity;
	}

	public String getOmCounty() {
		return this.omCounty;
	}

	public void setOmCounty(String omCounty) {
		this.omCounty = omCounty;
	}

	public String getOmProvince() {
		return this.omProvince;
	}

	public void setOmProvince(String omProvince) {
		this.omProvince = omProvince;
	}

	public String getOmLocation() {
		return this.omLocation;
	}

	public void setOmLocation(String omLocation) {
		this.omLocation = omLocation;
	}

	public Timestamp getOmCreatetime() {
		return this.omCreatetime;
	}

	public void setOmCreatetime(Timestamp omCreatetime) {
		this.omCreatetime = omCreatetime;
	}

	public Integer getOmMoney() {
		return this.omMoney;
	}

	public void setOmMoney(Integer omMoney) {
		this.omMoney = omMoney;
	}

	public String getOmBank() {
		return this.omBank;
	}

	public void setOmBank(String omBank) {
		this.omBank = omBank;
	}

	public Integer getHeadcount() {
		return this.headcount;
	}

	public void setHeadcount(Integer headcount) {
		this.headcount = headcount;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

	public Set getLogs() {
		return this.logs;
	}

	public void setLogs(Set logs) {
		this.logs = logs;
	}

	public Set getPurchases() {
		return this.purchases;
	}

	public void setPurchases(Set purchases) {
		this.purchases = purchases;
	}

	public Set getBills() {
		return this.bills;
	}

	public void setBills(Set bills) {
		this.bills = bills;
	}

}